var express = require('express');
var app = express();
var mysql = require('mysql');

app.set("view engine", "ejs");//template engine

var bodyparser = require("body-parser");
app.use(bodyparser.urlencoded({ extended: true }));

app.use(express.static("public"));

var con = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    database: 'Project' 
    });


app.get("/index", function(req, res){       
        res.render("index");
    });

app.get("/itinerary_form", function(req, res){       
        res.render("itinerary_form");
    });

app.get("/map", function(req, res){       
        res.render("map");
    });

app.get("/Learn", function(req, res) {
    var query = `SELECT month, country, visit_count FROM ( SELECT month, country, COUNT(*) AS visit_count, ROW_NUMBER() OVER (PARTITION BY month ORDER BY COUNT(*) DESC) AS rn FROM destination_in_mind GROUP BY month, country ) AS T WHERE rn = 1 ORDER BY MONTH(STR_TO_DATE(month, '%M'));
    `;

  con.query(query, function(error, results) {
    if (error) throw error;

    res.render("Learn", { data: results });
  });
});


app.get("/Africa", function(req, res){       
        res.render("Africa");
    });

app.get("/Antartica", function(req, res){       
        res.render("Antartica");
    });    

app.get("/Asia", function(req, res){       
        res.render("Asia");
    });

app.get("/Australia", function(req, res){       
        res.render("Australia");
    });

app.get("/Europe", function(req, res){       
        res.render("Europe");
    });

app.get("/NorthAmerica", function(req, res){       
        res.render("NorthAmerica");
    });

app.get("/SouthAmerica", function(req, res){       
        res.render("SouthAmerica");
    });

app.get("/unsubscribe_form", function(req,res){
    res.render("unsubscribe_form");
})

app.get("/custom", function(req,res){
    res.render("custom");
})

// app.get("/updated_custom", function(req, res) {
    
//     var query = "SELECT * FROM custom_itinerary";
//     con.query(query, function(error, results) {
//       if (error) throw error;
//       res.render("updated_custom", { data: results });
//     });
//   });


  app.get("/updated_custom", function(req, res) {
    res.render("updated_custom");});
    
app.get("/unsubscribe_confirmation", function(req, res){
    res.render("unsubscribe_confirmation");
});

app.get("/subscribe_confirmation", function(req, res){
    res.render("subscribe_confirmation");
});
    
app.get("/username_error", function(req, res){
    res.render("username_error");
});

app.get("/email_username", function(req, res){
    res.render("email_username");
});

app.get("/update", function(req, res){
    res.render("update");
});

app.get("/itinerary_results", function(req,res){
    res.render("itinerary_results");
});


    //checking connection 
con.connect(function(err) {
        if (err) throw err;
        console.log("\nConnected!\n");
      });


app.post("/form1", function(req, res) {
    let people = req.body.people;
    let category = req.body.category;
    let days = req.body.days;


    var s = "select * from Itineraries where people=? and category=? and days<=? group by country ";
    con.query(s, [people,category,days], function(error,results){
        if(error) throw error;
        res.render("itinerary_results",{ data: results });
    });

    var customer_info = { people: people, category: category, days: days}; //std info 
    var q = "insert into getting_started_form set ?";
    con.query(q, customer_info, function(error, results) {
        if (error) throw error;
    });
    
    });

app.post("/form2", function(req, res) {
    let continent = req.body.continent;
    let country = req.body.country;
    let month = req.body.month;

    var s = "select * from Itineraries where country=? and best_month=?";
    con.query(s, [country,month], function(error,results){
        if(error) throw error;
        res.render("itinerary_results",{ data: results });
    });

    var customer_info = { continent: continent, country: country, month: month}; 
    var q = "insert into destination_in_mind set ?";
    con.query(q, customer_info, function(error, results) {
        if (error) throw error;
        
    });


    });

app.post("/form3", function(req,res){
    let fname = req.body.fname;
    let lname = req.body.lname;
    let email = req.body.email;
    let username = req.body.username;

    var customer_info = { fname: fname, lname: lname, email: email, username: username}; 
    var q = "insert into subscribers set ?";
    con.query(q, customer_info, function(error, results) {
        if (error)
            res.redirect("/username_error");
        else
            res.redirect("/subscribe_confirmation"); 
    });

})

app.post("/custom", function(req,res){
    let country = req.body.country;
    let depart_date = req.body.depart_date;
    let return_date = req.body.return_date;
    let budget = req.body.budget;
    let people = req.body.people;
    let username = req.body.username;

    var customer_info = {country: country, depart_date: depart_date, return_date: return_date,
                        budget: budget, people:people, username: username};
    var q = "insert into custom_itinerary set ?";
    con.query(q, customer_info, function(error, results){
        if(error) throw error;
        
    });

    var s = "select * from custom_itinerary where username =? ";
    con.query(s, username, function(error,results){
        if(error) throw error;
        res.render("updated_custom",{ data: results });
    });


})

app.post("/custom2", function(req,res){
    let username = req.body.username;

    var q = "select * from custom_itinerary where username =? ";
    con.query(q, username, function(error,results){
        if(error) throw error;
        res.render("updated_custom",{ data: results });
    });
})

app.post("/delete", function(req,res){
    let form_no = req.body.form_no;
    let username = req.body.username;

    var q = "delete from custom_itinerary where form_no =? and username=?";
    con.query(q, [form_no, username], function(error, results){
        if(error) throw error;
        var s = "select * from custom_itinerary where username = ?";
        con.query(s, username, function(error,results){
            if (error) throw error;

            res.render("updated_custom", { data: results });
          });
        })
    
    })

app.post("/update", function(req,res){
    let form_no = req.body.form_no;
    let username = req.body.username;
    let country = req.body.country;
    let depart_date = req.body.depart_date;
    let return_date = req.body.return_date;
    let people = req.body.people;
    let budget = req.body.budget;

    var customer_info = {country: country, depart_date: depart_date, return_date: return_date,
        budget: budget, people:people, username: username, form_no: form_no};

    var q = "update custom_itinerary set ? where username=? and form_no=?";
    con.query(q, [customer_info, username, form_no], function(error, results){
        if(error) throw error;
    })

    var s = "select * from custom_itinerary where username = ?";
    con.query(s, username, function(error,results){
            if (error) throw error;

            res.render("updated_custom", { data: results });
          });
        
        
    })

app.post("/username", function(req,res){
    let email = req.body.email;

    var q = "select username from subscribers where email =?";
    con.query(q, email, function(error, results){
        if(error)
            res.redirect("/email_error");
        else   
            res.render("email_username",{ data: results })   
         });
});


app.post("/unsubscribe", function(req,res){
    let email = req.body.email;
    let username = req.body.username;

    
    var q = "delete from subscribers where email=? and username=?";
    con.query(q, [email,username], function(error, results){
        if(error) throw error;
        res.redirect("/unsubscribe_confirmation");
    });
})


app.get("/", function(req, res) {
    res.render("itinerary_form", { people: req.body.people, category: req.body.category, days: req.body.days });
});

app.listen(3000, function () {
console.log('App listening on port 8080!');
});
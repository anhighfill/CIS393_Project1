

//already know where you want to go? form
function selectCountry() {
  const continent = document.getElementById("continent");
  const country = document.getElementById("country");
  country.innerHTML = "";

  if (continent.value === "") {
    const defaultOption = document.createElement("option");
    defaultOption.text = "--Please select a continent first--";
    country.add(defaultOption);
  } else {
    const countries = {
      asia: ["--Please select a country--","China", "India", "Japan", "Russia"],
      africa: ["--Please select a country--","Egypt", "Kenya", "Nigeria", "South Africa"],
      europe: ["--Please select a country--","France", "Germany", "Italy", "Spain"],
      northamerica:["--Please select a country--","Bahamas", "Canada", "Costa Rica", "Jamaica", "Mexico", "Panama"],
      southamerica: ["--Please select a country--","Argentina", "Brazil", "Columbia"],
      australia: ["--Please select a country--","Australia", "New Zealand", "Papua New Guinea"],
      antartica: ["No locations currently available"]
    };

    const selectedCountries = countries[continent.value];

    for (let i = 0; i < selectedCountries.length; i++) {
      const option = document.createElement("option");
      option.text = selectedCountries[i];
      country.add(option);
    }
  }
}


//choose a country to explore form
document.getElementById('form1').addEventListener('submit',(e)=>{
  e.preventDefault();
  window.location = (document.getElementById('option').value);
})



 
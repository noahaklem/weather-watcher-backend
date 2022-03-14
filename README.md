# Weather Watcher
<div align='center'>

## An API Rails App Project

  <p> Backend Development </p>
  <h3>Noah Klem - 2022</h3>
</div>
<h5  align="center">Contact Information</h5>
<p align="center">
  <a target="_blank"href="https://www.linkedin.com/in/noahaklem/"><img src="https://img.shields.io/badge/linkedin-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
  <a href="mailto:noahaklem@gmail.com?subject=Hello%20Ileri,%20From%20Github"><img src="https://img.shields.io/badge/gmail-%23D14836.svg?&style=for-the-badge&logo=gmail&logoColor=white" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
</p>

### This project is accompanied by https://github.com/noahaklem/weather-watcher-frontend

Weather Watch is a backend RESTful api that make calls to two external apis. The api responds to the following endpoints:

<ul align='center'>
  <li>get api/v1/forecasts</li>
  <li>post api/v1/forecasts</li>
  <li>get api/v1/users</li>
  <li>post api/v1/users</li>
  <li>post '/login'</li>
  <li>post '/signup'</li>
</ul>

# A Note on External API Keys and .env File

The external api's called are : 
<ul>
  <li><a href='https://api.openweathermap.org/'>OpenWeather:</a>
    <p>This api retrieves weather information any location across the globe. Most api's are paid on requests.</p>
  </li>
  <li><a href='http://www.mapquestapi.com/'>MapQuestApi:</a>
    <p>This is a geocoding api for any location across the globe. Most api's are paid on requests.</p>
  </li>
</ul> 
<p>** These apis require keys to work. This project makes use of, and walks through, a .env file that stores these keys but is not included in your download. You will need to sign up and retrieve api keys in order for this application to work. How you choose to plug these api keys into your fetch calls, is up to you. </p>

# Installation

In the command line run the following:

1. `$ bundle install`
2. `$ rails db:migrate`

# Setup API Keys

1. Create a .env in the root folder of the project
2. Navigate to the folder
3. Add your api keys with the following format:
  'COORD_API_KEY'='your api key here'
  'WEATHER_API_KEY'='your api key here'
4. Add your .env file to your gitignore
5. You can now access your keys anywhere in your code with ENV['NAME_OF_KEY']






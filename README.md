# Endangered Species Tracker - API

<img width="1438" alt="Screen Shot 2021-04-06 at 11 30 45 AM" src="https://user-images.githubusercontent.com/46694709/113755310-67de0e00-96cd-11eb-8264-d4d813cdf2cd.png">

## Summary
I knew I wanted the theme of this project to be something I was passionate about. As an animal-lover and convservation buff, I chose to build an endangered species tracker. The premise being that a user can signup or login to access the web app’s functionality; fetching data from the Environmental Conservation Online System’s (ECOS) API of global endangered species and the ability for a user to save a species to their dashboard in order to track it's status. This is the backend Rails API to the project, housing the database, serializers, user authentication, and providing JSON response tokens to frontend HTTP requests. 

<img width="1440" alt="Screen Shot 2021-04-06 at 11 47 13 AM" src="https://user-images.githubusercontent.com/46694709/113755851-04081500-96ce-11eb-8d3b-9330b90b2995.png">

## Blog 
[Link to Blog Post](https://denalibalser.github.io/react_redux_final_project)

## Demo Video 
[Link to Demo Video](https://www.youtube.com/watch?v=_mWfJzi4mDY&ab_channel=DenaliBalser)

## Frontend 
[Link to Frontend Repo](https://github.com/denalibalser/endangered-species-tracker-ui)

## Ruby Version 
ruby '2.6.1'

## Database Initialization
Run 'rails db:migrate' 

## Usage Instructions :
* Clone this Repo & Frontend Repo (provided above) 
* Run 'cd endangered-species-api'
* Run 'bundle install'
* Run 'rails s' 
* *In frontend repo:*
* Run 'cd endangered-species-tracker-ui'
* Run 'yarn start'
* Enter 'Y' when prompted 

## Dependencies 
  * active_model_serializers
  * bcrypt (~> 3.1.7)
  * bootsnap (>= 1.4.2)
  * byebug
  * jbuilder (~> 2.7)
  * listen (~> 3.2)
  * pry
  * puma (~> 4.1)
  * rack-cors
  * rails (~> 6.0.3, >= 6.0.3.5)
  * sass-rails (>= 6)
  * spring
  * spring-watcher-listen (~> 2.0.0)
  * sqlite3 (~> 1.4)
  * turbolinks (~> 5)
  * tzinfo-data
  * web-console (>= 3.3.0)
  * webpacker (~> 4.0)

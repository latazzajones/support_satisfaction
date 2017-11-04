# Support Satisfaction

## Notes to the reviewer

1. This is a very railsy app. That is to say, it's currently so simple that there's no space for writing nice plain old ruby objects. I do see spots where if the buisness logic became even slightly more complicated I would start abstracting things out into small testable classes.  
1. I chose to use RSpec .. this choice was just because it was easier/faster for me to develop with. I'm totally fine with any testing framework - as long as there are tests.
1. **I ran out of time** - I would like to add error handling and validations on the survey form. I would also like to have made the rating part of the form a bit more fun.   
1. Here is a link to my answer to ["Prompt 2: Pick the Job Queue"](https://docs.google.com/document/d/1j0_xf5069xFOaTumIxZuIOCwEvv1EMOyG8KX-tyP5fg/edit?usp=sharing). Feel free to ask questions or leave comments in the document. 

## Getting set up

This is a little app and pretty easy to get up and running to take a look at! 

1. run `rake db:reset`
1. run `rake db:seed`
1. start your rails server

### Options for viewing in the browser: 

#### Referencing the README

The README is always available at [`http://localhost:3000`](http://localhost:3000)

#### Log in to the Admin Dashboard

1. Go to [`http://localhost:3000/admin`](http://localhost:3000/admin) in your browser
1. Log in with the following credentials. 
  * username: `name`
  * password: `password`    

#### Try filling out a Survey

Assuming you've run `rake db:seed` in setup, there should be a secret link to a sample survey at the bottom of the admin page

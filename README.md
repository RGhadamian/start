# NDIS Search

Website: [NDIS Search](https://grim-moonlight-28048.herokuapp.com) - hosted on Heroku

GitHub: [NDIS Search](https://github.com/RGhadamian/GA-Full-Stack-Project) 

### Technologies used
- Ruby on Rails
- PostgreSQL
- Bootstrap
- Javascript, JQuery
- HTML, CSS

## Scope
I was looking to build a search engine for using NDIS provider data to make it easier to find local providers. Essentially I was looking to replicate the functionality of the Karista website using the technologies and concepts we've learned in class using the technologies above. 

There are a couple of functions I wanted the website to have:
- Ability to log in and out as a user (to extend with ability to add/remove services and providers with different user roles and permissions, and user and provider dashboards for relevant services)
- Ability to search for providers based on 2 search criterias (postcode and services) with front end invalid data checking and services list populated from the database (to extend with front end JS auto-complete library)
- Search results to list all providers that match the search criteria using a join table between a many-to-many relationship between providers and services (to extend with Google Maps API, and finding 'local' within a 25/50 km radius of postcode)
    - Use of partials in the breadcrumbs
    - Results to show the reviews displaying in search results
- Ability to search the total list of providers in an index
    - list of providers to show the services offered by each provider
- Dynamic URL slugs for each provider with information about the provider drawings from database details like services offered. 
    - Ability to add, update and delete reviews of providers 
    - Ability to request pricing and details (to be extended with data sent to the providers who match the criteria)

- Styling to be close enough to the Karista website without spending too much time on it

### Thoughts
I'm pretty happy to have got as far as I have. I wanted to build this entire project in Rails and spend some time using the Ruby commands to get things done. Using the generator commands made things a lot easier to set up especially when it came to the databases. 

There were a few tricky bits along the way to make this as simple as possible for the user such as:
 - matching the services, then filtering by postcode
 - using forms and passing information around to different controllers and views
 - seeding the database
 - deploying to Heroku with a seeded database

I think I have a pretty good understanding of the MVC concepts, I've passing through parameters from one controller to another or a view within the same controller.

I didn't want to spend too much time working on concepts that I feel comfortable with: 
 - making the website an exact replica style wise of the Karista website using bootstrap or responsive design
 - putting too much data in the databases
 - adding all the different views such as about us, contact us etc  
 - more user feedback for changes in database state using toasts

### Gems Used:
- bcrypt
- pg

### Tables 
- Users
- Providers (many to many relationship with services)
- Services (many to many relationship with providers)
- Reviews (belongs to providers)

### Future Extensions
- Rebuilding front end and backend on React and Express
- Seeding databases with all provider information provided on NDIS PDF's
- Adding more animations and validation on the front end and backend
- Building more functionality for dashboards:
    - to build user profiles for users making it easier to search for future services and start conversations
    - to give providers more power over their profile and manage conversations with users 

## Project Requirements
- **Models.** Your app should have at least 3 models. Make sure they are associated correctly!
- **Views.** Use partials to DRY (Don’t Repeat Yourself) up your views.
- **Handles invalid data.** Forms in your application should validate data and handle incorrect inputs. Validate sign up information, verify valid email addresses and secure passwords.
- **Use Gems** Use a GEM that talks to an API to add functionality to your app.
- **User Login.** Make sure you have basic authentication and authorization set up (if you need it).
- **Heroku.** Deploy your code to Heroku.
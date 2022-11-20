# Sinatra Project Backend

This is a Ruby backend app that is responsible for handling CRUD operations and database management for a Blog's React based application.

## Technologies

1. Ruby
2. Sinatra
3. Active Record
4. Rack-CORS


## Backend Services


- Uses Active Record to interact with a database.
- Has two models with a one-to-many relationship.
- Hss API routes in Sinatra:
  - create and read actions for both models
  - full CRUD capability for one of the models
- Separate React frontend application that interacts with the API to
  perform CRUD actions.
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


## Getting Started

### Backend Setup

This repository has all the setup needed to get a Sinatra backend up and
running. [**Fork and clone**][fork link] this repository to get started. Then, run
`bundle install` to install the gems.

[fork link]: https://github.com/Abzed/phase-3-sinatra-react-project

You can start your server with:

```console
$ bundle exec rake server


This will run your server on port
[http://localhost:9292](http://localhost:9292).

Get ://users at
[http://localhost:9292/users](http://localhost:9292/users).

Get ://blogs at
[http://localhost:9292/blogs](http://localhost:9292/blogs).
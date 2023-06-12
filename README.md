# EDM (Electronic Dance Music) Concert Set API

## Introduction

This project was completed in attendance with Flatiron School as my phase 3 project.

The goal for this project was to create a backend with Ruby Sinatra and Active Record, as well as create a frontend with ReactJS to communicate with the database. This is the backend part of my project.

Link to frontend repository: https://github.com/fusion407/sinatra-react-project-frontend

Blog: https://dev.to/fusion407/edm-concert-api-creating-a-full-stack-application-with-rubys-sinatra-and-reactjs-m2o

Video: https://youtu.be/rKcGp0uN3WQ


## Usage
Fork and clone this repository, run `bundle install` in your console to install all required gems.

Then run `bundle exec rake server` to start the server which will be hosted on port 9292. Ex: (localhost:9292/fullsets)


## Routes and Models

### Fullsets

GET - '/fullsets' - Returns all data for each set in the database.

POST - '/fullsets' - Creates data for the newly created set.

PATCH - '/fullsets/:id' - Updates selected set with new values.

DELETE - '/fullsets/:id' - Deletes set from the database.

Schema:

```
  {
    "id": 1,
    "title": "Excision Lost Lands 2022 Detox Set",
    "rating": 5,
    "video_link": "https://www.youtube.com/watch?v=_XsLl8yLpq4",
    "artist_id": 1,
    "event_id": 1,
    "created_at": "2023-05-15T23:51:14.654Z",
    "updated_at": "2023-05-15T23:51:14.654Z",
    "location_id": 1,
    "artist": {
      "id": 1,
      "name": "Excision"
    },
    "event": {
      "id": 1,
      "name": "Lost Lands"
    },
    "location": {
      "id": 1,
      "name": "Thornville, OH"
    }
  }
```

------------------

### Artists

GET - '/artists' - Returns every existing artist.

POST - '/artists' - Adds new artist.

DELETE - '/artists/:id' - Deletes artist from the database.

Schema:

```
  {
    "id": 1,
    "name": "Excision"
  }
```

------------------

### Events

GET - '/events' - Returns every existing event.

POST - '/events' - Adds new event.

DELETE - '/events/:id' - Deletes event from the database.

Schema:

```
  {
    "id": 1,
    "name": "Lost Lands"
  }
```

------------------

### Locations

'/locations' - Returns every existing location.

'/locations' - Adds new location.

'/locations/:id' - Deletes location from the database.

Schema:

```
  {
    "id": 1,
    "name": "Thornville, OH"
  },
```

------------------

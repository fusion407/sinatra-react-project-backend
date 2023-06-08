# EDM (Electronic Dance Music) Concert API

## Introduction

This project was completed in attendance with Flatiron School as my phase 3 project.

The goal for this project was to create a backend with Ruby Sinatra and Active Record.

Link to frontend repository: https://github.com/fusion407/sinatra-react-project-frontend

Blog: https://dev.to/fusion407/edm-concert-api-creating-a-full-stack-application-with-rubys-sinatra-and-reactjs-m2o

Video: https://youtu.be/rKcGp0uN3WQ


## Routes and Models

### Fullsets

This model shows the full data set, sharing a one to many relationship with the other 3 models.

GET - '/fullsets' - Returns all data for each set in the database.

POST - '/fullsets' - Creates data for the newly created set.

PATCH - '/fullsets/:id' - Updates selected set with new values.

DELETE - '/fullsets/:id' - Deletes item from the database.

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

DELETE - '/artists/:id'

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

DELETE - '/events/:id' - Deletes item from the database.

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

'/locations/:id' - Deletes item from the database.

Schema:

```
  {
    "id": 1,
    "name": "Thornville, OH"
  },
```

------------------
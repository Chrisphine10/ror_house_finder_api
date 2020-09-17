# Overview
The project I am going to build for the **Final Capstone Project [backend-only variant]** is based on a find your house app. I will be building an API for this app. I should familiarize myself with the [given design of the website](https://www.notion.so/Final-Capstone-Project-Find-Your-House-backend-only-variant-f3581ebfeb3341deafd7617c5b9d934d) as it is going to be my API client. 

## Live Demo
[Backend only](https://nameless-plateau-65921.herokuapp.com/)

## Features

### Users
1. Listing all properties
2. List a single property
3. Can create add favorite properties
4. Can edit favorite property
5. Can delete favorite property
6. Can view all favorite properties
7. Logging in using login/password flow
8. Registering user using login/password flow
9. Logout functionality
10. Token-based authorization 
11. Access management check.
12. TDD implementation.
13. App versioning
14. Performance and optimization

## Installation

~~~bash
$ git clone git@github.com:rOluochKe/ror_house_finder_api.git
$ cd ror_house_finder_api
$ bundle install
$ rails db:migrate
$ rails db:seed
$ rails server
$ run rspec
~~~

## Endpoints
1. User Sign up
  ~~~bash
  $ http POST :3000/api/v1/sign_up user:='{"email":"raymond@gmail.com", "password":"123456", "password_confirmation":"123456"}'
  ~~~

  Response

  ~~~bash
  {
    "messages": "Signed Up successfully",
    "is_success": true,
    "data": {
        "user": {
            "id": 12,
            "email": "raymond@gmail.com",
            "created_at": "2020-09-16T10:20:32.740Z",
            "updated_at": "2020-09-16T10:20:32.740Z",
            "authentication_token": "2w12FBFWbU4jbu3AJaoz"
        }
    }
  }
  ~~~

2. User Sign in
  ~~~bash
  $ http POST :3000/api/v1/sign_in sign_in:='{"email":"raymond@gmail.com", "password":"123456"}' "AUTH-TOKEN: Bearer <your token>"
  ~~~

  Response

  ~~~bash
  {
    "messages": "Signed In Successfully",
    "is_success": true,
    "data": {
        "user": {
            "id": 12,
            "email": "raymond@gmail.com",
            "created_at": "2020-09-16T10:20:32.740Z",
            "updated_at": "2020-09-16T10:20:32.740Z",
            "authentication_token": "2w12FBFWbU4jbu3AJaoz"
        }
    }
  }
  ~~~

3. User Sign out
  ~~~bash
  $ http DELETE :3000/api/v1/log_out "AUTH-TOKEN: Bearer <your token>"
  ~~~

  Response

  ~~~bash
  {
    "messages": "Log out Successfully",
    "is_success": true,
    "data": {}
  }
  ~~~

4. Get Properties
  ~~~bash
  http GET :3000/api/v1/properties "AUTH-TOKEN: Bearer <your token>"
  ~~~

  Response

  ~~~bash
  {
    "messages": "Index properties successfully",
    "is_success": true,
    "data": {
        "properties": [
            {
                "id": 2,
                "title": "Mountain House",
                "property_type": "Apartment",
                "description": "It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.",
                "rating": 5,
                "price": 23.45,
                "duration": 2,
                "image": "https://images.unsplash.com/photo-1527030280862-64139fba04ca?ixlib=rb-1.2.1&auto=format&fit=crop&w=906&q=80",
                "total_favorites": 0,
                "favorites": []
            },
            {
                "id": 3,
                "title": "Mountain House",
                "property_type": "Apartment",
                "description": "It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.",
                "rating": 5,
                "price": 23.45,
                "duration": 2,
                "image": "https://images.unsplash.com/photo-1527030280862-64139fba04ca?ixlib=rb-1.2.1&auto=format&fit=crop&w=906&q=80",
                "total_favorites": 0,
                "favorites": []
            },
        ]
    }
  }
  ~~~
          
6. Get single property
  ~~~bash
  http GET :3000/api/v1/properties/1 "AUTH-TOKEN: Bearer <your token>"
  ~~~

  Response

  ~~~bash
  {
    "messages": "Show property successfully",
    "is_success": true,
    "data": {
        "property": {
            "id": 1,
            "title": "Mountain House",
            "property_type": "Apartment",
            "description": "It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.",
            "rating": 5,
            "price": 23.45,
            "duration": 2,
            "image": "https://images.unsplash.com/photo-1527030280862-64139fba04ca?ixlib=rb-1.2.1&auto=format&fit=crop&w=906&q=80",
            "total_favorites": 5,
            "favorites": [
                {
                    "id": 1,
                    "property_id": 1,
                    "user_id": 1
                }
            ]
        }
    }
  }
  ~~~

7. Create favorites
  ~~~bash
  http POST :3000/api/v1/properties/1/favorites favorite:='{"property_id":"1", "user_id":"1"}' "AUTH-TOKEN: Bearer <your token>"
  ~~~

  Response

  ~~~bash
  {
    "messages": "Created favorite successfully",
    "is_success": true,
    "data": {
        "favorite": {
            "id": 6,
            "property_id": 1,
            "user_id": 12,
            "user": {
                "id": 12,
                "email": "raymond@gmail.com",
                "created_at": "2020-09-16T10:20:32.740Z",
                "updated_at": "2020-09-16T11:07:35.110Z",
                "authentication_token": "t8vnxEeHrPfXHtXvWJZougP4"
            },
            "property": {
                "id": 1,
                "title": "Mountain House",
                "property_type": "Apartment",
                "description": "It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.",
                "rating": 5,
                "price": 23.45,
                "duration": 2,
                "image": "https://images.unsplash.com/photo-1527030280862-64139fba04ca?ixlib=rb-1.2.1&auto=format&fit=crop&w=906&q=80",
                "total_favorites": 5
            }
        }
    }
  }
  ~~~

8.  Getting favorites
  ~~~bash
  http GET :3000/api/v1/properties/1/favorites "AUTH-TOKEN: Bearer <your token>"
  ~~~

  Response

  ~~~bash
  {
    "messages": "Index favorites successfully",
    "is_success": true,
    "data": {
        "favorites": [
            {
                "id": 1,
                "property_id": 1,
                "user_id": 1,
                "user": {
                    "id": 1,
                    "email": "leighann@stehr-gerlach.org",
                    "created_at": "2020-09-07T23:27:18.964Z",
                    "updated_at": "2020-09-07T23:27:18.964Z",
                    "authentication_token": "gd7TBuJNFJs8B7cVkF-s"
                },
                "property": {
                    "id": 1,
                    "title": "Mountain House",
                    "property_type": "Apartment",
                    "description": "It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.",
                    "rating": 5,
                    "price": 23.45,
                    "duration": 2,
                    "image": "https://images.unsplash.com/photo-1527030280862-64139fba04ca?ixlib=rb-1.2.1&auto=format&fit=crop&w=906&q=80",
                    "total_favorites": 6
                }
            },
            {
                "id": 2,
                "property_id": 1,
                "user_id": 1,
                "user": {
                    "id": 1,
                    "email": "leighann@stehr-gerlach.org",
                    "created_at": "2020-09-07T23:27:18.964Z",
                    "updated_at": "2020-09-07T23:27:18.964Z",
                    "authentication_token": "gd7TBuJNFJs8B7cVkF-s"
                },
                "property": {
                    "id": 1,
                    "title": "Mountain House",
                    "property_type": "Apartment",
                    "description": "It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.",
                    "rating": 5,
                    "price": 23.45,
                    "duration": 2,
                    "image": "https://images.unsplash.com/photo-1527030280862-64139fba04ca?ixlib=rb-1.2.1&auto=format&fit=crop&w=906&q=80",
                    "total_favorites": 6
                }
            }
        ]
    }
  }
  ~~~

9.  Updating favorite
  ~~~bash
  http PUT :3000/api/v1/properties/1/favorites/1 favorite:='{"property_id":"1", "user_id":"1"}' "AUTH-TOKEN: Bearer <your token>"
  ~~~

10. Delete favorite
  ~~~bash
  http DELETE :3000/api/v1/properties/1/favorites/1 "AUTH-TOKEN: Bearer <your token>"
  ~~~

## API Documentation
[Follow this link](https://rorhousefinderapi.docs.apiary.io/#)

## Built by
[Raymond Oluoch](https://github.com/rOluochKe)


## Contributing

1. Fork it (git clone git@github.com:rOluochKe/ror_house_finder_api/fork)
2. Create your feature branch (git checkout -b feature/[choose-a-name])
3. Commit your changes (git commit -am 'What this commit will fix/add')
4. Push to the branch (git push origin feature/[chosen name])
5. Create a new Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE.md) file for details.
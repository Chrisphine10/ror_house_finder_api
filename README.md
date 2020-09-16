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
2. User Sign in
  ~~~bash
  $ http POST :3000/api/v1/sign_in sign_in:='{"email":"raymond@gmail.com", "password":"123456"}' "AUTH-TOKEN: Bearer <your token>"
  ~~~
3. User Sign out
  ~~~bash
  $ http DELETE :3000/api/v1/log_out "AUTH-TOKEN: Bearer <your token>"
  ~~~
4. Get Properties
  ~~~bash
  http GET :3000/api/v1/properties "AUTH-TOKEN: Bearer <your token>"
  ~~~
6. Get single property
  ~~~bash
  http GET :3000/api/v1/properties/1 "AUTH-TOKEN: Bearer <your token>"
  ~~~
7. Create favorites
  ~~~bash
  http POST :3000/api/v1/properties/1/favorites favorite:='{"property_id":"1", "user_id":"1"}' "AUTH-TOKEN: Bearer <your token>"
  ~~~
8.  Getting favorites
  ~~~bash
  http GET :3000/api/v1/properties/1/favorites "AUTH-TOKEN: Bearer <your token>"
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
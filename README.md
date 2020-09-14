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

### Admin
1. Manage properties (Create/Edit/Delete)
2. Register/login/logout
3. View all properties

## Users Routes
1. [POST] /api/v1/sign_up Registration
2. [POST] /api/v1/sign_in Login
3. [DELETE] /api/v1/log_out Log out
4. [GET] /api/v1/properties Getting all properties
5. [GET] /api/v1/properties/1 Getting single property
6. [POST] /api/v1/properties/1/favorites/ Creating favorite property
7. [GET] /api/v1/properties/1/favorites/ Getting created favorite
8. [PUT] /api/v1/properties/1/favorites/1 Updating a favorite
9. [DELETE] /api/v1/properties/1/favorites/1 Deleting a favorite property

## API Documentation
[Follow this link](https://rorhousefinderapi.docs.apiary.io/#)


## Installation

~~~bash
$ git clone git@github.com:rOluochKe/ror_house_finder_api.git
$ cd ror_house_finder_api
$ bundle install
$ rails db:migrate
$ rails db:seed
$ run rspec
~~~

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
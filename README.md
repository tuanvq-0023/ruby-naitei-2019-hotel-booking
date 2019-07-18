<a href=""><img src="https://www.nicepng.com/png/full/215-2156383_access-our-hotel-api-hotel-booking-icon-png.png" title="Hotel Booking" alt="Hotel Booking"></a>
# Hotel Booking

This is sample Hotel Booking website App using Rails framework

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the app and how to install them

- Ruby[2.5.5](https://www.ruby-lang.org/en/documentation/installation/)
- Rails[5.1.6](https://gorails.com/setup)
- Bundler[2.0.0](http://bundler.io)
- [Heroku](https://heroku.com/)

### Installing

To get started with the app, clone the repo and then install the needed gems:

```
$ git clone git@github.com:awesome-academy/ruby-naitei-2019-hotel-booking.git
$ cd ruby-naitei-2019-hotel-booking
$ bundle install
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

Your app should now be running on localhost:3000.

## Deploying to Heroku

```
heroku create
git push heroku master
heroku run rake db:migrate
heroku open
```

Alternatively, you can deploy your own copy of the app using the web-based flow:

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

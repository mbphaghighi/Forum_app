# laravel-forum

Develope a threads forum RESTful API web service with Laravel/Vue.js in which users can post, reply, like-dislike and subscribe threads within specific channels

## Getting Started

Clone the project repository by running the command below if you use SSH

```bash
git clone git@github.com:mbphaghighi/forum.git
```

If you use https, use this instead

```bash
git clone https://github.com/mbphaghighi/forum.git
```

After cloning,run:

```bash
composer install
```

Duplicate `.env.example` and rename it `.env`
Then update the database properties with your database config
After that import the test_poll.sql file into your database

Then run:

```bash
php artisan key:generate
```

### Using the App

And finally, start the application:

```bash
php artisan serve
```

and visit [http://localhost:8000/](http://localhost:8000/) to see the application in action.

## Built With

* [Laravel](https://laravel.com) - The PHP Framework For Web Artisans
* [Vue.js](https://vuejs.org) - The Progressive JavaScript Framework


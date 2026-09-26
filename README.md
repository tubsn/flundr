# flundr Bootstrap

This Bootstrap provides the structure and examples you need to build a small, readable MVC application with the flundr framework. It includes routing, layouts, templates, and examples for authentication and user management.

For development conventions and detailed guidance, see [AGENTS.md](./AGENTS.md).

## Project structure

```text
app/
  config/       Routes and application configuration
  controllers/  Request handling and responses
  models/       Data access and application logic
  views/        Page layouts and shared view setup
  templates/    HTML/PHP templates
public/         Webroot, entry point, and public assets
cache/          File-based cache
logs/           Application logs
vendor/         Composer dependencies
```

## How flundr works

flundr uses the Model–View–Controller (MVC) pattern to separate an application's responsibilities. Rather than handling a request, querying the database, and generating HTML in one file, each part has a clear role:

- **Routes** connect a URL and HTTP method to a controller action.
- **Controllers** receive requests and coordinate what happens next. They read input, check access where necessary, call models, and choose a response.
- **Models** handle data access and application logic, such as loading an article or saving a user.
- **Views** define page layouts and prepare shared presentation data.
- **Templates** generate the HTML sent to the browser.

For example, when someone opens an article URL, a route calls a controller action. The controller asks a model for the article and passes it to a view, which renders the appropriate template. This separation makes request handling, application logic, and presentation easier to understand and maintain.

## Installation

### 1. Configure the webroot

Point your webserver's document root to the project's `public/` directory. Requests enter the application through `public/index.php`.

Only `public/` should be accessible from the web. In particular, `.env`, `app/`, `cache/`, and `logs/` must not be served directly.

### 2. Install dependencies

Download or clone this repository, then run the following command in the project directory:

```bash
composer install
```

### 3. Configure the environment

Copy `example.env` to `.env` and enter the required settings, including your database credentials. Do not commit `.env` to Git.

### 4. Set up the user database

First add your Database Credentials to the .env file and then run the installer to set up the user database and a default user:

```bash
php install.php
```

Or import an existing Database.

### 5. Open the application

Visit your configured domain in a browser.

## Documentation

[AGENTS.md](./AGENTS.md) is the central guide for working with this project. It covers coding conventions, routing, controllers, models, templates, security, and deployment considerations.

For framework internals, see the [flundr Core repository](https://github.com/tubsn/flundrCore).
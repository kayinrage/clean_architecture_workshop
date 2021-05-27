## Description

This is the application used for "The Clean Architecture" workshops conducted at Selleo on 13.04.2021. 
You can find the presentation and exercises in 
[here](https://docs.google.com/presentation/d/1rZtzm2PnPnMKLoECgjG49Suvp9uADnasBj7MFOXbhR0/edit#slide=id.g2f740742ff_0_0).

## Setup

This app is using ruby (3.0.1), rails (6.1.3.1) and postgres.

As usual you have to create `database.yml` and then setup database with
```
rails db:create
rails db:migrate
rails db:seed
```

Don't forget to run `yarn install` before starting the server.

You run server with `rails server` and then you can
visit [http://localhost:3000/](http://localhost:3000/)

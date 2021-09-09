# ![output-onlinepngtools](https://user-images.githubusercontent.com/78288118/132431484-3d7ecff9-cbe8-4f24-adb2-3e9bef6f3650.png) CampQ

Marketplace app for renting or lending camping gear.

<img width="394" alt="Screen Shot 2021-09-08 at 10 03 13 AM" src="https://user-images.githubusercontent.com/78288118/132431692-b20c9362-a0da-4f1b-8191-7ae8f01598ce.png"> <img width="378" alt="Screen Shot 2021-09-08 at 10 05 15 AM" src="https://user-images.githubusercontent.com/78288118/132432294-57654fe4-f31f-429f-9f8f-4ac29cb38d99.png">

<br>
App home: https://campq.herokuapp.com/

   

## Getting Started
### Setup

Install gems
```
bundle install
```
Install JS packages
```
yarn install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
MAPBOX_API_KEY=your_own_mapbox_api_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 6](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping

## Acknowledgements
Inspired by a love of camping.

## Team Members
- [Nomin Batsaikhan](https://www.linkedin.com/in/nmnbatsaikhan/)
- [Sasha Kaverina](https://www.linkedin.com/in/sasha-kaverina/)
- [Shogo Miyagi](https://www.linkedin.com/in/shogo-miyagi/)
- [Aidan Fournier](https://www.linkedin.com/in/aidanfournier/)

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

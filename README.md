# Quora Boilerplate

This is a boilerplate app for quora-clone. It will be used to build quora-clone  and help you learn web server fundamentals such as HTTP(GET/POST), RESTful Routes, Cookies and the MVC Framework.

### Folder Structure
The directory structure emulates Rails MVC Framework using Sinatra.
```
quora-boilerplate
  ├─ config/
  │  ├── database.rb      <-- config for connecting to postgresql
  │  └── init.rb          <-- app config file
  ├─ controllers/         <-- folder for controllers               
  ├─ db/
  │  └── migrate/         <-- folder for AR migrations
  ├─ helpers/             <-- folder for helpers
  ├─ models/              <-- folder for AR models
  ├─ public/              <-- folder for public assets (CSS, JS, images)
  │  ├── css
  │  └── js
  ├─ views/
  │  └── application.erb  <-- main template
  ├─ Rakefile             <-- contains rake tasks to run CLI/server commands
  ├─ README.md
  ├─ app.rb               <-- initial controller
  └─ Gemfile              <-- to include Ruby gems
```

### Getting Started
1. Run ```bundle install``` to install all gem dependencies
2. Start the server by running ```ruby app.rb```

**Note:** Everytime you change a file, you will need to restart the  server. 
___
#### Enabling live-reload with `shotgun`:
1. Open `Gemfile` and uncomment
```ruby
group :development 
  gem "shotgun"
end
```
2. Remove `set :run, true` in `app.rb`
3. Run `bundle install`
4. Run server with `shotgun app.rb` or `bundle exec shotgun app.rb`# testbnb

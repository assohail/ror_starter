# Getting Started with Rails 🚀

### Overview
**ROR_STARTER** is a Ruby on Rails (RoR) application that simplifies the process of setting up a new web project. This guide covers essential steps, including installing Rails, creating a new application, connecting to a database, and understanding key concepts like MVC (Model, View, Controller) and RESTful design. It has used the Rails basic authentication method for user authentication.

### Features
- **Intuitive Structure:** Explore the well-organized layout of a Rails application, making it easy to navigate and understand.
- **MVC Principles:** Grasp the fundamental principles of Model, View, Controller architecture for building scalable and maintainable applications.
- **RESTful Design:** Learn the basics of designing your application following RESTful principles, ensuring a standardized and efficient API.
- **Code Generation:** Utilize Rails generators to quickly generate the initial components of your application, saving you time and effort.

### Getting Started
Follow the step-by-step instructions in this guide to set up **ROR_STARTER**. Whether you're a beginner or an experienced developer, this application provides a solid foundation for your web projects.

```
git clone git@github.com:assohail/ror_starter.git
cd ror_starter
```
- change the default db name (if you want) and credentials 
```
bundle install
rails db:create
rails db:migrate
rails s
```

### Gems 
```
bundle add faker
bundle add kaminari

bundle add factory_bot_rails
bundle add rspec-rails

```

### Contribute
Feel free to contribute to the development of ROR_STARTER APP by submitting bug reports, feature requests, or even pull requests.

Happy coding! 🎉
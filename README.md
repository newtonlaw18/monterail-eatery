# Monterail Eatery

A full stack Ruby on Rails application that allows Monterail employees to order their meals easily. User can login to the system through Facebook or Github. 

### Assumptions

* User can only order one meal per day
* Order status is changed by the restaurant. For example, when the restaurant receives an order, it will update the status of the order. The "receive order" button is used to stimulate user receiving the order from the restaurant. 
* User is not allowed to add any meals or restaurant to the system. They can only choose from the selection of meals in the system. This is to avoid any user from choosing a restaurant that is far from the office. 
* Admin is allowed to add, view, edit and remove new meals, restaurants, orders and users. 

### Prerequisites

What things you need to install the software and how to install them
Ruby version : 2.3.1
Rails version : 5.0.0

### Installing

A step by step series of examples that tell you have to get a development env running

Say what the step will be

```
git clone https://github.com/newtonlaw18/monterail-eatery
```

```
cd monterail-eatery
```

```
bundle
```

```
rails db:migrate
```

```
rails db:seed
```

```
rails s
```

## Running the tests

```
rspec spec/{name of the file}_spec.rb
```

## Admin Panel

Login to http://localhost:3000/admin to access the admin panel. The Admin can view all employees orders, make changes to the meals, restaurants and orders as well. 

I have created a login for admin in the seed file.
Email: admin@monterail.com
Password: 123456

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds
 

## Authors

* **Newton Law** - *Initial work* - [PurpleBooth](https://github.com/newtonlaw18)

## Acknowledgments

* Application template by Pages


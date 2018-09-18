# README

* Ruby version: 2.5

* Run with: rails server -p 3001

* Database creation: rake db:seed

* Dependencies:
This application uses Ruby on Rails so please ensure you have Rails installed http://installrails.com/ 
To interact with the API you can use Postman https://www.getpostman.com/ which allows an easy query interface

In Postman queries can be sent in graphQL format example:
POST: http://localhost:3001/query
{
"query":
"{ shops { name, products { name, line_items { price, quantity } } } }"
}

Returns:
Returns the data:
{
    "data": {
        "shops": [
            {
                "name": "Redmart",
                "products": [
                    {
                        "name": "apple pie",
                        "line_items": [
                            {
                                "price": 10,
                                "quantity": 2
                            },
                            {
                                "price": 10,
                                "quantity": 1
                            }
                        ]
                    },
                    {
                        "name": "lipstick",
                        "line_items": [
                            {
                                "price": 12,
                                "quantity": 1
                            }
                        ]
                    },
                    {
                        "name": "strawberry pie",
                        "line_items": [
                            {
                                "price": 9,
                                "quantity": 1
                            }
                        ]
                    }
                ]
            },
            {
                "name": "Bluemart",
                "products": []
            },
            {
                "name": "Greenmart",
                "products": []
            }
        ]
    }
}


CRUD operations:

Creation, updating and deleting can be done with the graphQL operation mutation https://graphql.org/learn/queries/#mutations 

Reading can be done with the graphQL operation query
https://graphql.org/learn/queries/#fields



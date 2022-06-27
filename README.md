To run the api :

1. git clone  https://github.com/ramimohammad/crud.git

2. cd crud

3. sudo docker-compose up --build

-- check >> sudo docker ps -a >> you will see two containers one for the app and the other for db

........

The api is accessible now on http://localhost:8080/

...........

Now it's time to test it : 

Add items >> curl -XPOST -H "Content-Type: application/json" -d '{"title": "firstitem", "content": "content4firstitem"}' http://localhost:8080/items 

       -- check >> curl -XGET http://localhost:8080/items  > to get all items
                   curl -XGET http://localhost:8080/items/1 > to get single item


Update items >> curl -XPUT -H "Content-Type: application/json" -d '{"title": "FRstitem", "content": "contentforfirstitem"}' http://localhost:8080/items/1


       -- check >> curl -XGET http://localhost:8080/items/1 


Delete items >> curl -XDELETE http://localhost:8080/items/1

       -- check >> curl -XGET http://localhost:8080/items





## Running the Application Container

1. Build the project container with: 
```docker build -t gradle-app .```


1. Run the container with:
```docker run -it -p 8080:8080 gradle-app```

1. When the webpage loads you will be on a 404 error page. At the end of the URL
append ```/demo``` in order to visit the actual gradle application


--------------------------
## Running Jenkins Container

1. Build the jenkins container with: 
```docker compose up -d```

1. Open the webpage that is running on port 8081 on the host machine

1. If prompted to login as an admin use 
```docker compose logs jenkins``` to find the inital one-time use admin password. If prompted to login use 
``` 
    username: ensf401    or     username: ensf400
    password: ensf401           password: ensf400
```

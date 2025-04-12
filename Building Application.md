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

1. Open the webpage that is running on port 8081 and ensure the port is public for auto webhook pulls

1. Open the webpage that is running on port 9000

1. If prompted to login as an admin use 
```docker compose logs jenkins``` to find the inital one-time use admin password. If prompted to login use 
``` 
    signup:
    
    login:

    username: hisada
    password: hisadavi
```
1. For SonarQube
```enter admin for username, admn for password``` for the inital one-time use admin password. If prompted to login use 
``` 
    signup:
    
    login:

    username: admin
    password: Group15_test
```

## Contributions:
1. Syed Danial Farrukh: Worked on SonarQube stage implementation
1. Fahmi Sardar:        Worked on initializing the project, setting up docker files and unit tests
1. Altin Bakiu:         Worked on jenkins deployment ensuring everything was compatible and debugging code
1. Max Enns:            Worked on assisting the rest of the team members as well as setting up the documentation

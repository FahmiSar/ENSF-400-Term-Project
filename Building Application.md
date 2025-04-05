Build the project container with: 
```docker build -t gradle-app .```


Run the container with:
```docker run -it -p 8080:8080 gradle-app```

When the webpage loads you will be on a 404 error page. At the end of the URL
append ```/demo``` in order to visit the actual gradle application


#Dockerfile for the Flask application

#"FROM" means import already existing image
#"WORKDIR" means working directory in which the commands will be executed
#"COPY" means copy files from host to container
#"RUN" means run the command while building the image
#"CMD" means run the command when starting or running the container


#After setting up the file just run the command
#docker build -t flaskapp .
#here -t means tag the image
#. means current directory open in the terminal 

#or we can specify a specific port
#docker build -t flaskapp -p 5000:5000 .

#"docker run" creates a container from the image
#docker run --name flaskapp_1 -p 5000:5000 -d flaskapp

#"docker start" starts the already existing container
#docker start flaskapp_1


# "docker images" shows all the images
# "docker ps -a" shows all the containers

#"docker system prune -a" removes all the images and containers

#"docker build -t flaskapp:v1 ."
# it creates an image with a specific tag

# when we need to run this image we have to specify the tag
#docker run --name flaskapp_1 -p 5000:5000 -d flaskapp:v1

# when we need to get the changes in the project to be reflected in the container without rebuilding it everytime we use volumes
# docker run --name flaskapp_1 -p 5000:5000 -v D:\Learning\Flask:/app -d flaskapp:v1 (remove last slash)

# using this method allows the changes in the project to be reflected in the container

# if we donot map the local project directory to a docker directory rather create a volume for a container directory it is called 
# anonymous volumeand they overide the previous mapping nd will hold the data presistent in the container

# docker run --name flaskapp_1 -p 5000:5000 -v D:\Learning\Flask:/app -v /app/folder/to/presist -d flaskapp:v1


# rather than using long commands we can use docker compose
# docker-compose up

# To stop the container
# docker-compose down

# To remove the images
# docker-compose down rmi all -v 
# this command will remove the images and volumes


FROM python:3.10.14-alpine3.20

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

CMD ["python", "app.py"]
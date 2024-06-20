
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


FROM python:3.10.14-alpine3.20

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

CMD ["python", "app.py"]
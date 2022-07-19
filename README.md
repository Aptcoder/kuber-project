[![CircleCI](https://dl.circleci.com/status-badge/img/gh/Aptcoder/kuber-project/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/Aptcoder/kuber-project/tree/main)

## Project Summary

This project is from the Udacity DevOps Nanodegree and it was completed to apply the skills acquired in the course to manage and operationalize microservices.

A pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on is provided in a flask API service.

The tasks in the project will be to work towards deploying this API in a kubernetes cluster.

## How to setup and start project

You can run the flask API service directly or in a docker container or use a kubernetes deployments.

Running the app directly:

- Create a virtual environemnt: python3 -m venv ~/.devops
- Activate virtual environemnt: source ~/.devops/bin/activate
- Install necessary requirements: pip install --upgrade pip && pip install -r requirements.txt - Run the app: python app.py

Running in a docker container:

- Run run_docker.sh or:

- Build a docker image using docker file: docker build .
- Run a container using the image: docker run -p 8000:80 kuber-project

Running using a Kubernetes Deployment:

- Run upload_docker.sh and run_kubernetes.sh or:

- Tag created image: docker tag localimagename new-repo:tagname
- Push the created docker image to docker hub: docker push new-repo:tagname
- create deployment with Kubectl: kubectl create deploy kuber-project --image=<path to deployed image>

## File and folders

.circleci - contains config for circle ci workflow
model_data - contains data for the ML model
output_txt_files - contains the docker and kubernetes output files
app.py - the python script for the application
Dockerfile - Docker file with image building instructions
Makefile - Makefile consisting of various intstructions
make_prediction.sh - Bash file to making a prediction
run_docker.sh - Bash file for running the application in docker
run_kubernetes - Bash file for running the application in docker
upload_docker - Bash file for uploading and tagging the docker image

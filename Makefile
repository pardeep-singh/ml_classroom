DOCKER_IMAGE_NAME = pardeep/ml_classroom
LATEST_IMAGE_TAG = v1
CONTAINER_NAME = ml-classroom

pull:
	docker pull $(DOCKER_IMAGE_NAME):$(LATEST_IMAGE_TAG)

build:
	docker build -f Dockerfile -t $(DOCKER_IMAGE_NAME):$(LATEST_IMAGE_TAG) .

run:
	docker run --name $(CONTAINER_NAME) -d -v ${PWD}:/ml_classroom -w /ml_classroom -p 4545:8888 $(DOCKER_IMAGE_NAME):$(LATEST_IMAGE_TAG) jupyter-notebook --NotebookApp.ip=0.0.0.0 --NotebookApp.password_required=False --NotebookApp.token='' --NotebookApp.custom_display_url="http://localhost:4545" --allow-root

.PHONY: pull build run

# Machine Learning Classroom

This repository contains the material used for Machine Learning sessions conducted at Helpshift.
Most of the content will be in the form of Jupyter notebooks & we will use Python 3.

## Table of Content

### Python 3

Beginner level proficiency is enough to understand the concepts & material used in this
repository/class. In case you haven't used Python recently, please refer to following chapters
from [A Byte of Python](https://python.swaroopch.com/) to understand the Python concepts
which will be useful in understanding & exploring the code in this class/repository.

- [Basics](https://python.swaroopch.com/basics.html)
- [Operators and Expressions](https://python.swaroopch.com/op_exp.html)
- [Control Flow](https://python.swaroopch.com/control_flow.html)
- [Functions](https://python.swaroopch.com/functions.html)
- [Data Structures](https://python.swaroopch.com/data_structures.html)
- [Object Oriented Programming](https://python.swaroopch.com/oop.html)

Also try to read the full book if possible.

### Setup

#### Using Docker(Recommended method)

1. Install Docker by following the instructions given for different platforms on this
[page](https://docs.docker.com/install/).

2. You can either pull the existing docker image or build your own image

    2.1 Using Docker

    `make pull`
    
    2.2 Build image

    `make build`
    
3. Verify that docker image exists

   `docker images | grep ml_classroom`
    
4. Start the Docker container

   `make run`
   
5. Verify by visiting [URL](http://localhost:4545) in browser.

#### Using Virtual Env

1. Install Python3 using the instructions given on this [page](https://www.python.org/downloads/).

2. Create [Virtual Env](https://packaging.python.org/tutorials/installing-packages/#creating-and-using-virtual-environments)

   `virtualenv venv`
    
3. Activate the Virtual Env

   `source venv/bin/activate`
   
4. Install required dependencies

   `pip install -r requirements.txt`
   
5. Launch Jupyter notebook

   `jupyter notebook --port 4545`
   
6. Verify by visiting [URL](http://localhost:4545) in browser.

### Roadmap

1. [Exploratory Data Analysis using Covid19 Dataset](eda/covid19.ipynb)
2. [Text classification using Naive Bayes](text_classification_with_naive_bayes/consumer_complaints_classification.ipynb)
3. [Text classification using Logistic Regression](text_classification_using_logistic_regression/consumer_complaints_classification.ipynb)
4. Tuning Logistic Regression model using Regularisation techniques
5. Ensemble Learning
6. Mini Project

## Datasets References

- [Kaggle: Novel Corona Virus 2019 Dataset](https://www.kaggle.com/sudalairajkumar/novel-corona-virus-2019-dataset)
- [Kaggle: Consumer Finance Complaints Dataset](https://www.kaggle.com/selener/consumer-complaint-database)


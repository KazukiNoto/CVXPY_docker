FROM continuumio/anaconda3:latest

WORKDIR /app
ADD . /app

# pip本体のアップデート
RUN pip install -U pip

RUN conda install -c conda-forge cvxpy -y

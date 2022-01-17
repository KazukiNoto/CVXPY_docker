FROM continuumio/anaconda3:latest

WORKDIR /app
ADD . /app

# 環境設定
RUN conda create python=3.9.7 --name cvxpy
# CVXPYのインストール
RUN conda install -c conda-forge cvxpy -y

# pip本体のアップデート
RUN pip install -U pip

ARG FROM_IMAGE_NAME=ubuntu:20.04
FROM ${FROM_IMAGE_NAME}

RUN apt-get update && \
    apt-get install -y unzip python3 python3-pip htop

ADD requirements.txt .
RUN pip install -r requirements.txt


ADD . /home/
WORKDIR /home

EXPOSE 8888

RUN jupyter nbextension enable --py widgetsnbextension

ENTRYPOINT [ "jupyter", "lab", "--ip", "0.0.0.0", "--allow-root" ]

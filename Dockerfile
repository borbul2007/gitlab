FROM centos
RUN rm -rf /etc/yum.repos.d/*
COPY CentOS-Base.repo /etc/yum.repos.d/
RUN yum -y install python3 python3-pip && pip3 install flask flask-jsonpify flask-restful
WORKDIR /python_api
COPY python-api.py .
ENTRYPOINT ["python3", "./python-api.py"]

FROM centos:7
RUN yum update -y && curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && python get-pip.py && pip install flask==1.0 && rm get-pip.py
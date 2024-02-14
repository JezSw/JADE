FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    build-essential tcl-dev less \
    curl python3 python3-pip

RUN curl -LJO https://github.com/cea-hpc/modules/releases/download/v5.3.1/modules-5.3.1.tar.gz && \
    tar xfz modules-5.3.1.tar.gz && \
    cd modules-5.3.1 && \
    ./configure && \
    make && \
    make install && \
    echo "source /usr/local/Modules/init/sh" >> /root/.bashenv \
    echo "[[ -s ~/.bashenv ]] && source ~/.bashenv" >> /root/.bash_profile \
    echo "[[ -s ~/.bashenv ]] && source ~/.bashenv" >> /root/.bashrc
ENV BASH_ENV=/root/.bashenv

#RUN pip install install --index-url https://test.pypi.org/simple/ --extra-index-url https://pypi.org/simple jadevv
COPY . /jade
WORKDIR /jade
RUN pip install .
RUN pip install pytest pytest-cov
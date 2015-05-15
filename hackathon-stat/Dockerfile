FROM docker.core.tf/topface-base

RUN apt-get update && \
    apt-get install -y mysql-client && \
    apt-get clean

RUN git clone https://github.com/zxcabs/min-cohort.git /var/www/project

WORKDIR /var/www/project

COPY application.yaml config/application.yaml
COPY hackathon-stat-init.sh /etc/my_init.d/hackathon-stat-init.sh
COPY stat-service.sh /etc/service/stat/run

RUN npm install
EXPOSE 13200


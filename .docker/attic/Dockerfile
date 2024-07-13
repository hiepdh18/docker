FROM alpine:3.11
#Install enviroment
RUN apk add --no-cache curl
RUN curl -sL https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub
RUN curl -sLO https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.32-r0/glibc-2.32-r0.apk
RUN curl -sLO https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.32-r0/glibc-bin-2.32-r0.apk
RUN curl -sLO https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.32-r0/glibc-i18n-2.32-r0.apk
RUN apk add --no-cache glibc-2.32-r0.apk glibc-bin-2.32-r0.apk glibc-i18n-2.32-r0.apk
RUN curl -sL https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o awscliv2.zip
RUN unzip awscliv2.zip
RUN aws/install
RUN apk add --no-cache --upgrade bash
RUN apk add --no-cache postgresql-client
ENV DATABASE_HOST default
ENV DATABASE_USERNAME default
ENV DATABASE_PASSWORD default
# CMD aws s3 cp s3://attic-trudi-admin/temp/db.dump . && echo $DATABASE_PASSWORD &&  PGPASSWORD=$DATABASE_PASSWORD psql --host $DATABASE_HOST --port 5432 -U $DATABASE_USERNAME -d backend  < db.dump
CMD echo $DATABASE_PASSWORD &&  PGPASSWORD=$DATABASE_PASSWORD psql --host $DATABASE_HOST --port 5432 -U $DATABASE_USERNAME -d backend  < db.dump

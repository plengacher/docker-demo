FROM r-base

MAINTAINER Patrik Lengacher

RUN R -e 'install.packages("plumber")'

ADD addition.r .

EXPOSE 8000

ENTRYPOINT ["R", "-e", "pr <- plumber::plumb(commandArgs()[4]); pr$run(port=8000)"]

CMD ["addition.r"]

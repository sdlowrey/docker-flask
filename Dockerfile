FROM python:3.7

RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi
RUN pip install Flask==1.1.2 Flask_RESTful==0.3.8 uWSGI==2.0.18 requests==2.23.0

WORKDIR /app
COPY app /app
COPY run_app.sh /

EXPOSE 9090 9191
USER uwsgi

CMD ["/run_app.sh"]
FROM python:3.10.6-slim

COPY . /app

WORKDIR /app

RUN python -m venv /opt/venv
RUN pip install pip --upgrade
RUN /opt/venv/bin/pip install -r requirements.txt

RUN chmod +x entrypoint.sh
RUN chmod +x migrate.sh

RUN sh /app/migrate.sh

CMD ["/app/entrypoint.sh"]

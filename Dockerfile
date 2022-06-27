FROM python:3.10-alpine

RUN python3.10 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

RUN adduser -D mckinseyappuser
RUN chown -R mckinseyappuser:mckinseyappuser /opt/venv

USER mckinseyappuser


WORKDIR /usr/src/app

COPY --chown=mckinseyappuser:mckinseyappuser . /usr/src/app/

RUN /opt/venv/bin/pip install --upgrade pip
RUN /opt/venv/bin/pip install -r requirements.txt


CMD ["/opt/venv/bin/flask", "run", "--host=0.0.0.0", "--port=80"]

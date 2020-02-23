FROM rasa/rasa

COPY app /app

USER 0

RUN pip3 uninstall --yes gym
RUN pip3 install gym==0.15.4

RUN pip3 uninstall --yes sanic-plugins-framework
RUN pip3 install sanic-plugins-framework==0.8.2

RUN rasa train nlu

ENTRYPOINT rasa run --enable-api --port $PORT
FROM rasa/rasa

COPY app /app

USER 0

RUN pip uninstall --yes gym
RUN pip install gym==0.15.4

RUN rm -Rf /build/lib/python3.6/site-packages/gym-0.16.0-py3.6.egg-info

RUN rasa train nlu

#ENTRYPOINT rasa run --enable-api --port $PORT
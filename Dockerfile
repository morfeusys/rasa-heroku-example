FROM rasa/rasa

COPY app /app

USER 0

RUN pip uninstall --yes gym
RUN pip install gym==0.15.4

RUN rasa train nlu

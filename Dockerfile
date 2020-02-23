FROM rasa/rasa:1.6.0

COPY app /app

RUN rasa train nlu

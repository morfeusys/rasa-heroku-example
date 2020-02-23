FROM rasa/rasa

COPY app /app

RUN rasa train nlu

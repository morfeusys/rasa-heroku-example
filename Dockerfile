FROM rasa/rasa:1.6.0

COPY app /app

RUN rasa train nlu

#ENTRYPOINT rasa run --enable-api --port $PORT

ENTRYPOINT ["rasa"]

#CMD ["run", "--enable-api"]
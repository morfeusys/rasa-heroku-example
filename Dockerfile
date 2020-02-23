FROM rasa/rasa:1.6.0

COPY app /app

USER 0
RUN chmod +x /app/nlu.sh

USER 1001
RUN rasa train nlu

ENTRYPOINT ["/app/nlu.sh"]
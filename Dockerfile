
FROM telegraf:alpine

COPY pre-entrypoint.sh /pre-entrypoint.sh
RUN chmod +x /pre-entrypoint.sh

ENTRYPOINT ["/pre-entrypoint.sh"]
CMD ["/entrypoint.sh", "telegraf"]

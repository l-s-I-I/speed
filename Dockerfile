
WORKDIR /app


COPY . .


RUN chmod +x Run.sh  

CMD ["./Run.sh"]

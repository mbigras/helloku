FROM python:3.7.9
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY helloku.py entrypoint.sh ./
ENTRYPOINT ["/app/entrypoint.sh"]
CMD [""]

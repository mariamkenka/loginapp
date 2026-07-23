FROM python:3.11-slim

WORKDIR /app


RUN pip install --no-cache-dir \
    Flask \
    Flask-SQLAlchemy \
    Flask-WTF==1.2.* \
    Werkzeug==3.0.* \
    psycopg2-binary==2.9.* \
    python-dotenv==1.0.*


COPY templates/ ./templates/
COPY app.py .

EXPOSE 5000

# Run Flask using python module flag
CMD ["python", "app.py"]
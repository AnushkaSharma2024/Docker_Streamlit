FROM python:3.9



# Set working directory

WORKDIR /app
# Copy requirements and install dependencies

COPY requirements.txt .

RUN pip install -r requirements.txt

RUN pip install streamlit





# Copy application files
COPY . .



# Expose the port that Streamlit uses

EXPOSE 8501



# Run the Streamlit app

CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
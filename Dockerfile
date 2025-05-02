# Use Python 3.10
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt ./
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy the rest of the app
COPY . .

# Expose the port FastAPI will run on
EXPOSE 8000

# Start the FastAPI server
CMD ["uvicorn", "llm_model_api:app", "--host", "0.0.0.0", "--port", "8000"]

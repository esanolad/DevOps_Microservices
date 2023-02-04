FROM python:3.7.3-stretch

## Step 1:
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . /app/


## Step 3:
RUN pip install --no-cache-dir -r requirements.txt
# hadolint ignore=DL3013

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD [ "python3", "-u", "app.py"]


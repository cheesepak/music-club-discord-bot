FROM python:3.9

# Set working directory
WORKDIR /app

# Copy dependencies text file
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy additional files into the container
COPY bot.py ./
COPY settings.py ./
COPY date.txt ./
COPY .env ./

# Install additional packages
RUN apt-get update && \
    apt-get install -y tzdata && \
    ln -fs /usr/share/zoneinfo/America/Los_Angeles /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

# Container start
CMD ["python", "./bot.py"]
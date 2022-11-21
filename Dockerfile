FROM ubuntu:latest
ADD ./ /opt/wowhoneypot
RUN apt-get update \
 && apt-get install -y git python3 \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
WORKDIR /opt/wowhoneypot/
CMD ["python3", "wowhoneypot.py"]

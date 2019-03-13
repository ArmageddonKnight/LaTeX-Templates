FROM ubuntu:19.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
	texlive-full \
	vim make \
	git hub \
	wget && \
    rm -rf /var/lib/apt/lists/*


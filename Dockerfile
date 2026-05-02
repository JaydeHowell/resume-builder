FROM debian:stable-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -q && apt-get install -qy --no-install-recommends \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-pictures \
    texlive-luatex \
    texlive-fonts-extra \
    texlive-xetex \
    fonts-roboto \
    fonts-roboto-slab \
    fonts-lato \
    fontconfig \
    latexmk \
    && fc-cache -f -v \
    && rm -rf /var/lib/apt/lists/*

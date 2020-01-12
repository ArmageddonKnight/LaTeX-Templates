FROM armageddonknight/texlive-full:latest

COPY entrypoint.sh \
     /root/

CMD ["make"]

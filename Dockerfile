# LORD USERBOT
FROM koala21/kampangbot:buster

#
# LORD
#
RUN git clone -b Zelda-Userbot https://github.com/fhmyngrh/Zelda-Userbot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/fhmyngrh/Zelda-Userbot/Zelda-Userbot/requirements.txt

CMD ["python3","-m","userbot"]

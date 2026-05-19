FROM quay.io/lyfe00011/md:beta

RUN git clone https://github.com/lyfe00011/levanter.git /root/LyFE/

WORKDIR /root/LyFE/

RUN yarn install --frozen-lockfile || yarn install

ENV NODE_ENV=production

EXPOSE 3000

CMD ["yarn", "start"]

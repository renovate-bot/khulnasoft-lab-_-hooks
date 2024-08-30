FROM mhart/alpine-node:8

ARG PKG_VERSION
ADD ./node_modules ./node_modules
ADD khulnasoft-hooks-${PKG_VERSION}.tgz ./
WORKDIR /package

ENV PORT 5000
EXPOSE 5000

CMD ["npm", "start"]

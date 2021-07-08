FROM node:lts-alpine

WORKDIR /app


# Begin frontend
WORKDIR /app/frontend
COPY ./frontend/package.json ./frontend/yarn.lock ./
RUN yarn install

COPY ./frontend /app/frontend
RUN yarn build
# End frontend


# Begin backend
WORKDIR /app/backend
COPY ./backend/package.json ./backend/yarn.lock ./
RUN yarn install
# Install Postgres support
RUN yarn add pg pg-hstore

COPY ./backend /app/backend
RUN yarn build
# End backend


ENV STATIC_DIRECTORY=/app/frontend/public


CMD yarn start
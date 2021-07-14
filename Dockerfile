FROM node:lts-alpine as frontend

WORKDIR /app


# Begin frontend
COPY ./frontend/package.json ./frontend/yarn.lock ./
RUN yarn install

COPY ./frontend .
RUN yarn build
# End frontend


# Begin backend
FROM node:lts-alpine
WORKDIR /app
COPY ./backend/package.json ./backend/yarn.lock ./
RUN yarn install
# Install database packages
ARG DATABASE_PACKAGES=sqlite3
RUN yarn add $DATABASE_PACKAGES

COPY ./backend .
RUN yarn build
# End backend


ENV STATIC_DIRECTORY=/app/public

COPY --from=frontend /app/public /app/public

CMD yarn start
FROM postgres:16-alpine
RUN apk add --no-cache postgresql-pgvector

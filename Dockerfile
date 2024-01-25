FROM postgres:16
RUN apt-get update \
  && apt-get install --no-install-recommends \
    postgresql-16-pgvector \
  && rm -rf /var/lib/apt/lists/*
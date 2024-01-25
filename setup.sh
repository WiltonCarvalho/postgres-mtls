#!/bin/sh
echo "Setting up postgres hba settings"
cat <<'EOF'> ${PGDATA}/pg_hba.conf
# "local" is for Unix domain socket connections only
local   all             all                                     trust
# IPv4 local connections
host    all             all             127.0.0.1/32            trust
# IPv6 local connections
host    all             all             ::1/128                 trust
# mTLS connections
hostnossl all  all  all  reject
hostssl   all  all  all  scram-sha-256 clientcert=verify-ca
EOF
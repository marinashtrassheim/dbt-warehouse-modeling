#!/bin/bash
pip install dbt-core dbt-postgres psycopg2-binary -q

while ! nc -z postgres 5432; do
  sleep 1
done

mkdir -p /root/.dbt

cat > /root/.dbt/profiles.yml << 'EOF'
retail_project:
  outputs:
    dev:
      type: postgres
      host: postgres
      port: 5432
      user: dbt_user
      pass: dbt_password
      dbname: retail_dw
      schema: public
      threads: 1
  target: dev
EOF

# shellcheck disable=SC2164
cd /usr/app/retail_project
cp /usr/app/seeds/*.csv seeds/ 2>/dev/null || true

tail -f /dev/null
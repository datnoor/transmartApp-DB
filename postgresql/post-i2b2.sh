pgbin=/opt/PostgreSQL/9.1/bin

$pgbin/psql -U postgres -d transmart -f post-i2b2.sql --quiet
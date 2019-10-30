select table_schema, table_name, pg_relation_size(table_schema||'.'||table_name)
from information_schema.tables
order by 3 DESC;



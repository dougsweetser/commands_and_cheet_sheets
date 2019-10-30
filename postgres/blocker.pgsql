SELECT application_name, datname, pid, usename, client_addr, query_start, xact_start, waiting, query FROM pg_stat_activity; ROLLBACK;

SELECT application_name, pid, usename, state,xact_start, wait_event, wait_event_type, query FROM pg_stat_activity where query ~ 'UPDATE'; ROLLBACe;

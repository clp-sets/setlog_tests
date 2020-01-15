use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET011-1.p
% X \ (X \ Y) = X ^ Y
diff(A,B,Adb) & diff(A,Adb,Ad_adb) & ninters(A,B,Ad_adb)

,2000,_CONSTR,_RES).

get_time(Tend).


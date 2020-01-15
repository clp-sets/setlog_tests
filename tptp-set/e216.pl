use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET263-6.p
% Domain preserves union
dom(X,M1) & dom(Y,M2) & un(M1,M2,M3) & un(X,Y,M4) & ndom(M4,M3)

,2000,_CONSTR,_RES).

get_time(Tend).


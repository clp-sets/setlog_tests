use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET282-6.p
% Domain of domain relation
% weaker form; true goal is not expressible in {log}
dom(R,X) & nrel(R)

,2000,_CONSTR,_RES).

get_time(Tend).


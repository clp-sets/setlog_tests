use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% domInv
inv(R,N1) & dom(N1,N2) & ran(R,N2) & R neq {}
,2000,_CONSTR,_RES).

get_time(Tend).


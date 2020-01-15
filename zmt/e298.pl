use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% domDres
dres(S,R,N1) & dom(N1,N2) & dom(R,N3) & inters(S,N3,N2) & S neq {} & R neq {}
,2000,_CONSTR,_RES).

get_time(Tend).


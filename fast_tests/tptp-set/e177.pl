use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET223-6.p
% Cross product property 5
inters(W,Y,M1) & inters(X,Z,M2) & nsubset(cp(M1,M2),cp(W,Z))

,2000,_CONSTR,_RES).

get_time(Tend).


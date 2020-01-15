use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET268-6.p
% Domain property 1
inters(X,cp(U1,U2),M1) & dom(X,M2) & nsubset(M1,cp(M2,U2))

,2000,_CONSTR,_RES).

get_time(Tend).


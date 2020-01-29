use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET287-6.p
% Domain property 8
subset(X,Y) & un(Y,M1,cp(U1,U2)) & disj(Y,M1) & inters(M1,X,M2) & ndom(M2,{})

,2000,_CONSTR,_RES).

get_time(Tend).


use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET288-6.p
% Domain property 9
subset(X,cp(U1,U2)) & un(Y,M1,cp(U1,U2)) & disj(Y,M1) & inters(M1,X,M2) & dom(M2,{}) & nsubset(X,Y)

,2000,_CONSTR,_RES).

get_time(Tend).


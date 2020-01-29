use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Höfner-Struth 2008 (51)
pfun(X) & comp(X,Y,N2) & un(Y,CY,cp(B,C)) & disj(Y,CY) & comp(X,CY,N3) & ninters(N2,N3,{})

,2000,_CONSTR,_RES).

get_time(Tend).


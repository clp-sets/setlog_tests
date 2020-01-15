use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Höfner-Struth 2008 (49)
pfun(X) & pfun(Y) & comp(X,Y,N1) & npfun(N1)

,2000,_CONSTR,_RES).

get_time(Tend).


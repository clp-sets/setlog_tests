use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Höfner-Struth 2008 (20)
comp(X,Y,N1) & inters(N1,Z,{}) & inv(X,IX) & comp(IX,Z,N2) & ninters(Y,N2,{})
 
,2000,_CONSTR,_RES).

get_time(Tend).


use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Höfner-Struth 2008 (21)
inv(X,IX) & comp(IX,Z,N2) & inters(Y,N2,{}) & comp(X,Y,N1) & ninters(N1,Z,{})
 
,2000,_CONSTR,_RES).

get_time(Tend).


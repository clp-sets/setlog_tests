use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Höfner-Struth 2008 (19)
subset(X,Y) & comp(Z,X,N1) & comp(Z,Y,N2) & nsubset(N1,N2)
 
,2000,_CONSTR,_RES).

get_time(Tend).


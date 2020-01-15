use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Höfner-Struth 2008 (22)
inters(Y,Z,N1) & comp(X,N1,N2) & comp(X,Y,N3) & comp(X,Z,N4) & inters(N3,N4,N5) & nsubset(N2,N5)
 
,2000,_CONSTR,_RES).

get_time(Tend).


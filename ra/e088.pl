use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Höfner-Struth 2008 (24)
comp(Z,X,N1) & inters(N1,Y,N2) & inv(X,IX) & comp(Y,IX,N3) & inters(Z,N3,N4) & inv(Z,IZ) & comp(IZ,Y,N5) & inters(X,N5,N6) & comp(N4,N6,N7) & nsubset(N2,N7)
 
,2000,_CONSTR,_RES).

get_time(Tend).


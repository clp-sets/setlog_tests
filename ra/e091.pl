use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Höfner-Struth 2008 (34)
set(A) & set(B) & set(C) & subset(X,cp(A,B)) & subset(Y,cp(B,C)) & comp(X,Y,N1) & comp(X,Z,N2) & un(N2,CN2,cp(A,A)) & disj(N2,CN2) & inters(N1,CN2,N3) & un(Z,CZ,cp(B,C)) & disj(Z,CZ) & inters(Y,CZ,N4) & comp(X,N4,N5) & ninters(N5,CN2,N3)
 
,2000,_CONSTR,_RES).

get_time(Tend).


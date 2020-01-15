use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Höfner-Struth 2008 (48)
set(A) & set(B) & subset(X,cp(A,A)) & subset(Y,cp(A,B)) & id(A,IA) & subset(X,IA) & comp(X,Y,N1) & un(Z,CZ,cp(A,B)) & disj(Z,CZ) & inters(N1,CZ,N2) & comp(X,Z,N3) & un(N3,CN3,cp(A,B)) & disj(N3,CN3) & ninters(N1,CN3,N2)
 
%set(A) & set(B) & id(A,IA) & subset(X,IA) & comppf(X,Y,N1) & un(Z,CZ,cp(A,B)) & disj(Z,CZ) & inters(N1,CZ,N2) & comppf(X,Z,N3) & un(N3,CN3,cp(A,B)) & disj(N3,CN3) & ninters(N1,CN3,N2)
 
,2000,_CONSTR,_RES).

get_time(Tend).


use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Höfner-Struth 2008 (47)
set(A) & subset(X,cp(A,A)) & subset(Y,cp(A,A)) & id(A,IA) & subset(X,IA) & subset(Y,IA) & comp(X,Z,N1) & comp(Y,Z,N2) & ninters(N1,N2,N3) & inters(X,Y,N4) & comp(N4,Z,N3)
 
,2000,_CONSTR,_RES).

get_time(Tend).

% set(A) & subset(X,cp(A,A)) & subset(Y,cp(A,A)) & id(A,IA) & subset(X,IA) & subset(Y,IA) & comp(X,Z,M1) & comp(Y,Z,M2) & ninters(M1,M2,M3) & inters(X,Y,M4) & comp(M4,Z,M3)

% set(A) & subset(X,cp(A,A)) & subset(Y,cp(A,A)) & id(A,IA) & subset(X,IA) & subset(Y,IA) & comp(X,Z,M1) & comp(Y,Z,M2) & inters(M1,M2,M3) & inters(X,Y,M4) & ncomp(M4,Z,M3)

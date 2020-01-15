use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Höfner-Struth 2008 (46)
subset(X,cp(A,A)) & subset(Y,cp(A,A)) & id(A,IA) & subset(X,IA) & subset(Y,IA) & comp(X,Y,N1) & ninters(X,Y,N1)
 
,2000,_CONSTR,_RES).

get_time(Tend).


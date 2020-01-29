use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Höfner-Struth 2008 (35)
set(A) & set(B) & set(C) & subset(X,cp(B,C)) & comp(Y,X,N1) & un(N1,CN1,cp(A,C)) & disj(N1,CN1) & inv(X,IX) & comp(CN1,IX,N2) & un(Y,CY,cp(A,B)) & disj(Y,CY) & nsubset(N2,CY)
 
,2000,_CONSTR,_RES).

get_time(Tend).


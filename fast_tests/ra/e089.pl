use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Höfner-Struth 2008 (27)
un(X,CX,cp(A,B)) & disj(X,CX) & ninv(CX,CIX) & inv(X,IX) & un(IX,CIX,cp(B,A)) & disj(IX,CIX)
 
,2000,_CONSTR,_RES).

get_time(Tend).


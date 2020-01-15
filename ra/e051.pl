use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Connex different domain and range
subset(R,cp(X,Y)) & un(X,Y,U) & id(U,N1) & inv(R,N2) & un(N1,R,N3) & un(N3,N2,cp(X,Y)) & A in X & B in Y & A neq B & [A,B] nin R & [B,A] nin R

,2000,_CONSTR,_RES).

get_time(Tend).


use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Connex same domain and range
set(X) & id(X,N1) & inv(R,N2) & un(N1,R,N3) & un(N3,N2,cp(X,X)) & A in X & B in X & A neq B & [A,B] nin R & [B,A] nin R

,2000,_CONSTR,_RES).

get_time(Tend).



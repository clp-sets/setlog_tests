use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% inId 2
id(X,N1) & P1 in X & P2 in X & P1 = P2 & [P1,P2] in N1 & X neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

 

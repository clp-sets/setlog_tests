use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Partial function (functional) OK 
inv(R,N1) & comp(N1,R,N2) & subset(R,cp(X,Y)) & id(Y,N4) & subset(N2,N4) & npfun(R)

,2000,_CONSTR,_RES).

get_time(Tend).


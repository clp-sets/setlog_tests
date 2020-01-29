use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO012-1.p
% Inverse is an involution
% inv(inv(X)) = X
un(X,Y,U) & disj(X,Y) & un(Y,M1,U) & disj(Y,M1) & M1 neq X


,2000,_CONSTR,_RES).

get_time(Tend).


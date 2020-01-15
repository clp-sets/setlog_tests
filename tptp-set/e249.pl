use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET298-6.p
% Inverse of complement
un(X,M1,cp(U1,U2)) & disj(X,M1) & inv(M1,M2) & inv(X,M3) & un(M3,M4,cp(U2,U1)) & disj(M3,M4) & ninters(M4,cp(U2,U1),M2)

,2000,_CONSTR,_RES).

get_time(Tend).


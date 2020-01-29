use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL004+1.p
% Converse negation are interconvertible
un(X0,M1,cp(U1,U2)) & disj(X0,M1) & inv(X0,M2) & un(M2,M3,cp(U2,U1)) & disj(M2,M3) & ninv(M1,M3) 

,2000,_CONSTR,_RES).

get_time(Tend).


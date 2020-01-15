use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET291-6.p
% Proof of Goedel's axiom B6, part 3
inv(X,M1) & [U,V] in cp(U1,U2) & [V,U] in X & [U,V] nin M1

,2000,_CONSTR,_RES).

get_time(Tend).


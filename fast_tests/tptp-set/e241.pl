use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET290-6.p
% Proof of Goedel's axiom B6, part 2
inv(X,M1) & [U,V] in M1 & [V,U] nin X

,2000,_CONSTR,_RES).

get_time(Tend).


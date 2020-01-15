use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET238-6.p
% Corollary to restriction alternate definition 1
restrict(Xr,X,Y,M1) & Z in M1 & prolog_call(nth1(1,Z,M2)) & prolog_call(nth1(2,Z,M3)) & [M2,M3] nin M1

,2000,_CONSTR,_RES).

get_time(Tend).


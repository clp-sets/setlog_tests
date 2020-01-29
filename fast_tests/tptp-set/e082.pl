use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET129-6.p
% Membership in a built unordered triple
U in {X/{Y/{Z/{}}}} & U neq X & U neq Y & U neq Z

,2000,_CONSTR,_RES).

get_time(Tend).


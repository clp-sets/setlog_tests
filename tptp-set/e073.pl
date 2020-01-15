use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET108-6.p
% 1st and 2nd make the ordered pair
[Y,Z] in cp(U1,U2) & prolog_call(nth1(1,[Y,Z],M1)) & prolog_call(nth1(2,[Y,Z],M2)) & [M1,M2] nin cp(U1,U2)

,2000,_CONSTR,_RES).

get_time(Tend).


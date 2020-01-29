use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET089-6.p
% A singleton set has a member, part 4
M1 in {X} & {M1} neq {X} & M1 neq {X}

,2000,_CONSTR,_RES).

get_time(Tend).


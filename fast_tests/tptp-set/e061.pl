use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET088-6.p
% A singleton set has a member, part 3
M1 in {X} & nset(M1) & M1 = {X}

,2000,_CONSTR,_RES).

get_time(Tend).


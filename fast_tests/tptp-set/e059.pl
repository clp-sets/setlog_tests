use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET086-6.p
% A singleton set has a member, part 1
set(Y) & M1 in {Y} & nset(M1) 

,2000,_CONSTR,_RES).

get_time(Tend).


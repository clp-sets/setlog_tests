use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% The complement of the universe is the empty set
un(cp(D,R),CU,cp(D,R)) & disj(cp(D,R),CU) & CU neq {}

,2000,_CONSTR,_RES).

get_time(Tend).


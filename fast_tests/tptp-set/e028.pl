use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET036-3.p
% Properties of apply for functions, part 1 of 3
pfun(A_function) & [A,B] in A_function & napply(A_function,A,B) 

,2000,_CONSTR,_RES).

get_time(Tend).


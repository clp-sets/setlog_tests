use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET037-3.p
% Properties of apply for functions, part 2 of 3
pfun(A_function) & dom(A_function,M1) & A in M1 & apply(A_function,A,B) & [A,B] nin A_function

,2000,_CONSTR,_RES).

get_time(Tend).


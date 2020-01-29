use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET038-3.p
% Properties of apply for functions, part 3 of 3
pfun(A_function) & dom(A_function,A_domain) & ran(A_function,A_range) & A in A_domain & apply(A_function,A,M1) & M1 nin A_range

,2000,_CONSTR,_RES).

get_time(Tend).


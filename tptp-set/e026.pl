use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET034-3.p
% The composition of functions is a function
pfun(A_function) & pfun(Another_function) & comp(Another_function,A_function,M1) & npfun(M1)

,2000,_CONSTR,_RES).

get_time(Tend).


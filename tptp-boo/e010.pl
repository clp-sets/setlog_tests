use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO006-1.p
% Multiplication is bounded (X * 0 = 0)
ninters(X,{},{})


,2000,_CONSTR,_RES).

get_time(Tend).


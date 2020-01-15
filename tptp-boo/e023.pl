use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO017-1.p
% Relating sum and product (X + Y = Z -> X * Z = X)
un(X,Y,Z) & ninters(X,Z,X)


,2000,_CONSTR,_RES).

get_time(Tend).


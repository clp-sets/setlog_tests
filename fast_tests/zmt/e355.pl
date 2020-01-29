use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% invInPowerCross 2
inv(R,M1) & nsubset(M1,cp(A,B)) & subset(R,cp(B,A))

,2000,_CONSTR,_RES).

get_time(Tend).


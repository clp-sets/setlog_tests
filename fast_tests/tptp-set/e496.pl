use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
subset(E,cp(B,C)) & D in E & (npair(D) or D = [F,G] & (F nin B or G nin C))

,2000,_CONSTR,_RES).

get_time(Tend).


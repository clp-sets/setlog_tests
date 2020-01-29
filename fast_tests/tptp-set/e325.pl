use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET416-6.p
% Composition with singleton function 2
dom(Z,M1) & Y nin M1 & ncomp({[X,Y]},Z,{})

,2000,_CONSTR,_RES).

get_time(Tend).


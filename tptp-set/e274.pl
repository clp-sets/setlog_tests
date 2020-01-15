use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET321-6.p
% Range property 5
ran(Z,M1) & Y in M1 & domain(Z,U1,Y,M2) & dom(Z,M3) & M2 nin M3 


,2000,_CONSTR,_RES).

get_time(Tend).


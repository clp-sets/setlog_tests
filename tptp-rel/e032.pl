use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL028+1.p
% For subidentities meet and composition coincide
id(M1,M2) & subset(X0,M2) & subset(X1,M2) & comp(X0,X1,M3) & ninters(X0,X1,M3)

,2000,_CONSTR,_RES).

get_time(Tend).


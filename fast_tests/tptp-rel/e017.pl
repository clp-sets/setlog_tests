use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL013+1.p
% Zero is annihilator
rel(X0) & (ncomp(X0,{},{}) or ncomp({},X0,{}))

,2000,_CONSTR,_RES).

get_time(Tend).


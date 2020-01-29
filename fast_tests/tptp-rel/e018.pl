use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL014+1.p
% One is neutral element composition_identity axiom
subset(X0,cp(U1,U2)) & id(U1,M1) & id(U2,M2) & (ncomp(X0,M2,X0) or ncomp(M1,X0,X0))

,2000,_CONSTR,_RES).

get_time(Tend).


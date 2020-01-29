use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Coreflexive ok
subset(R,cp(A,B)) & id(A,N2) & subset(R,N2) & [X,Y] in R & X neq Y

,2000,_CONSTR,_RES).

get_time(Tend).


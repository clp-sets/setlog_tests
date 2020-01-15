use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Antisymmetric OK
subset(R,cp(A,A)) & id(A,N2) & inv(R,N3) & inters(R,N3,N4) & subset(N4,N2) & [X,Y] in R & [Y,X] in R & X neq Y

,2000,_CONSTR,_RES).

get_time(Tend).


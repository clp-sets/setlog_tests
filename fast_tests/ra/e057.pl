use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Total order is antisymmetric
[X,Y] in R & [Y,X] in R & X neq Y & subset(N4,N2) & comp(R,R,N5) & subset(N5,R) & id(A,N2) & inv(R,N3) & set(A) & inters(R,N3,N4) & un(R,N3,cp(A,A))

,2000,_CONSTR,_RES).

get_time(Tend).


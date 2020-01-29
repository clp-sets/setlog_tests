use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Partial order is transitive
[X,Y] in R & [Y,Z] in R & [X,Z] nin R & comp(R,R,N5) & subset(N5,R) & delay(set(A) & subset(R,cp(A,A)) & id(A,N2) & inv(R,N3) &  subset(N2,R) & inters(R,N3,N4) & subset(N4,N2))

,2000,_CONSTR,_RES).

get_time(Tend).


use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Total order is total
solve(inv(R,N3) & un(R,N3,cp(A,A)) & X in A & Y in A & X neq Y & [X,Y] nin R & [Y,X] nin R) & comp(R,R,N5) & subset(N5,R) & id(A,N2) & inters(R,N3,N4) & subset(N4,N2)

,2000,_CONSTR,_RES).

get_time(Tend).


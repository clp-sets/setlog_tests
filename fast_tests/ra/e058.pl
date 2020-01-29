use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Total order transitive
[X,Y] in R & [Y,Z] in R & [X,Z] nin R & comp(R,R,N5) & subset(N5,R) & delay(id(A,N2) & inv(R,N3) & set(A) & inters(R,N3,N4) & subset(N4,N2) & un(R,N3,cp(A,A))) 

,2000,_CONSTR,_RES).

get_time(Tend).


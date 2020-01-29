use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Preorder is transitive
comp(R,R,N1) & subset(N1,R) & subset(R,cp(A,A)) & id(A,N3) & subset(N3,R) & [X,Y] in R & [Y,Z] in R & [X,Z] nin R

,2000,_CONSTR,_RES).

get_time(Tend).


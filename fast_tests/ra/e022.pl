use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Version of Tarski's 10th axiom where
% A and B have domain and range over different
% sets. 

subset(A,cp(X,Y)) & subset(B,cp(Y,Z)) & inv(A,IA) &
comp(A,B,AB) &
un(AB,CAB,cp(X,Z)) & disj(AB,CAB) &
comp(IA,CAB,IC) &
un(B,CB,cp(Y,Z)) & disj(B,CB) &
nun(IC,CB,CB)


,2000,_CONSTR,_RES).

get_time(Tend).


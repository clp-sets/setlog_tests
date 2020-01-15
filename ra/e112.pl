use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Heterogeneous Relation Algebra, Schmidt, Hattensperger and Winter
% domain of a relation as a vector: R <= A*B ==> dom(R) = dom(R,B*B)
subset(R,cp(A,B)) & dom(R,M1) & comp(R,cp(B,B),M2) & ndom(M2,M1)

,2000,_CONSTR,_RES).

get_time(Tend).


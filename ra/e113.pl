use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Heterogeneous Relation Algebra, Schmidt, Hattensperger and Winter
% range of a relation as a vector: R <= A*B ==> ran(R) = ran(inv(R),A*A)
subset(R,cp(A,B)) & ran(R,M1) & comp(cp(A,A),R,M2) & nran(M2,M1)

,2000,_CONSTR,_RES).

get_time(Tend).


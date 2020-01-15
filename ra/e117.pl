use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Heterogeneous Relation Algebra, Schmidt, Hattensperger and Winter
% Definition 3.2.1: R is a vector iff R=R;B*B
% equivalence of vector definition: R=R;B*B <==> R=dom(R)*B
% equivalence of vector definition: R=R;B*B <== R=dom(R)*B
ncomp(cp(M,B),cp(B,B),cp(M,B))

,2000,_CONSTR,_RES).

get_time(Tend).


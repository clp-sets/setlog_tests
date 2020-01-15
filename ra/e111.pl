use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Tarski rule
% Heterogeneous Relation Algebra, Schmidt, Hattensperger and Winter
% cp(C,D) neq {} & R <= cp(A,B) ==> (R neq {} <==> cp(C,A);R;cp(B,D) = cp(C,D))
% cp(C,D) neq {} & R <= cp(A,B) ==> (R neq {} <== cp(C,A);R;cp(B,D) = cp(C,D))
C neq {} & D neq {} & subset(R,cp(A,B)) & R = {} & comp(cp(C,A),R,M1) & comp(M1,cp(B,D),cp(C,D))

,2000,_CONSTR,_RES).

get_time(Tend).


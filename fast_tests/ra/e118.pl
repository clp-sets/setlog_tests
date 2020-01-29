use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% R is injective iff R;inv(R) <= id
% R is injective iff inv(R) is a function
% pfun(inv(R)) <==> R;inv(R) <= id
% pfun(inv(R)) ==> R;inv(R) <= id
subset(R,cp(A,B)) & inv(R,M1) & pfun(M1) & comp(R,M1,M2) & id(A,M3) & nsubset(M2,M3)

,2000,_CONSTR,_RES).

get_time(Tend).


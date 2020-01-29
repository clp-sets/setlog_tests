use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% If R is a function from A and to B
% then injective and surjective (as defined in RA)
% doesn't imply bijective
set(A) & pfun(R) & subset(R,cp(A,B)) & inv(R,IR) & id(A,IA) & id(B,IB) & comp(R,IR,N1) & subset(N1,IA) & comp(IR,R,N2) & subset(IB,N2) & N1 neq N2 

,2000,_CONSTR,_RES).

get_time(Tend).


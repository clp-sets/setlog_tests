use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% If R is a function from A and to A
% then injective and surjective (as defined in RA)
% imply bijective
set(A) & pfun(R) & subset(R,cp(A,A)) & inv(R,IR) & id(A,IA) & comp(R,IR,N1) & subset(N1,IA) & comp(IR,R,N1) & subset(IA,N1) & nid(A,N1) 

,2000,_CONSTR,_RES).

get_time(Tend).


use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% If R is not necessarily a function, 
% then injective and surjective (as defined in RA)
% doesn't imply bijective
comp(IA,R,R) & comp(R,IA,R) & inv(R,IR) & id(A,IA) & comp(R,IR,N1) & subset(N1,IA) & comp(IR,R,N2) & subset(IA,N2) & (N1 neq N2 or N1 = N2 & nid(A,N1))

,2000,_CONSTR,_RES).

get_time(Tend).


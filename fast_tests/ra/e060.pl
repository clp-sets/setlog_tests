use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Surjective OK
id(A,N1) & inv(R,N2) & comp(N2,R,N3) & subset(N1,N3) & Y in A & comp(R,{[Y,Y]},{})

,2000,_CONSTR,_RES).

get_time(Tend).


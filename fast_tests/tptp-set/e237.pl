use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET286-6.p
% Corollary to domain property 7
[X,Y] in cp(U1,U2) & dom(X,M1) & un(X,{[M1,Y]},M2) & dom(M2,M3) & nun(M1,{M1},M3)

,2000,_CONSTR,_RES).

get_time(Tend).


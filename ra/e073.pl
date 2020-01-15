use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Tarski p82 (XXIII)
un(S,T,N1) & comp(R,N1,N2) & comp(R,S,N3) & comp(R,T,N4) & nun(N3,N4,N2)

,2000,_CONSTR,_RES).

get_time(Tend).


use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Tarski p.86
% R = S <=> R /\ S + -R /\ -S = A*B
% where -R means the complement of R w.r.t. A*B
% case =>
R = S & inters(R,S,N1) & un(R,CR,cp(A,B)) & disj(R,CR) & un(S,CS,cp(A,B)) & disj(S,CS) & inters(CR,CS,N2) & nun(N1,N2,cp(A,B))

,2000,_CONSTR,_RES).

get_time(Tend).


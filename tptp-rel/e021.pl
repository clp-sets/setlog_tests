use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL017+1.p
% Another modular law
comp(X0,X1,M1) & un(M1,M2,cp(U1,U2)) & disj(M1,M2) & comp(X0,X2,M3) & un(M2,M3,M4) & un(X2,M5,cp(U3,U2)) & disj(X2,M5) & inters(X1,M5,M6) & comp(X0,M6,M7) & un(M7,M8,cp(U1,U2)) & disj(M7,M8) & comp(X0,X2,M9) & nun(M8,M9,M4) & subset(X0,cp(U1,U3))
,2000,_CONSTR,_RES).

get_time(Tend).


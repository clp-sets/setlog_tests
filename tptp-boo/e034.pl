use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO021-1.p
% add_multiply_property axiom
inters(Y,Z,M1) & un(X,M1,M2) & un(Y,X,M3) & un(Z,X,M4) & ninters(M3,M4,M2)


,2000,_CONSTR,_RES).

get_time(Tend).


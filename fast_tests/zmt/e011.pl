use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% <== (2)
dres(X,R,M1) & inters(R,cp(X,X),M2) & nrres(M1,X,M2)

,2000,_CONSTR,_RES).

get_time(Tend).


use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% nrresCup
un(Q,R,N1) & nrares(N1,S,N2) & rares(Q,S,N3) & rares(R,S,N4) & un(N4,N3,N2)
,2000,_CONSTR,_RES).

get_time(Tend).


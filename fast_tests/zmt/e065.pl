use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% rresCup
un(Q,R,N1) & nrres(N1,S,N2) & rres(Q,S,N3) & rres(R,S,N4) & un(N3,N4,N2)
,2000,_CONSTR,_RES).

get_time(Tend).


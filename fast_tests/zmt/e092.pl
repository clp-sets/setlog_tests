use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% ndresCup
un(Q,R,N1) & ndares(S,N1,N2) & dares(S,Q,N3) & dares(S,R,N4) & un(N4,N3,N2)
,2000,_CONSTR,_RES).

get_time(Tend).


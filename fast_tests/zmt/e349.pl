use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% nrresCup
un(Q,R,N1) & rares(N1,S,N2) & rares(Q,S,N3) & rares(R,S,N4) & un(N4,N3,N2) & Q neq {} & R neq {} & S neq {}
,2000,_CONSTR,_RES).

get_time(Tend).


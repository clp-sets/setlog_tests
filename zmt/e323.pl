use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% dresCup
un(Q,R,N1) & dres(S,N1,N4) & dres(S,Q,N3) & dres(S,R,N2) & un(N2,N3,N4) & Q neq {} & R neq {} & S neq {}
,2000,_CONSTR,_RES).

get_time(Tend).


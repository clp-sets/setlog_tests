use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% nrresNrres
rares(R,S,N1) & rares(N1,T,N2) & un(S,T,N3) & rares(R,N3,N2) & R neq {} & S neq {} & T neq {}
,2000,_CONSTR,_RES).

get_time(Tend).



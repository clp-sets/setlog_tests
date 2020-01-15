use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% imageNrres
rares(R,S,N1) & rimg(N1,T,N2) & rimg(R,T,N4) & ndiff(N4,S,N2)
,2000,_CONSTR,_RES).

get_time(Tend).


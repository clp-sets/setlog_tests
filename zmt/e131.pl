use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% imageComp
comp(Q,R,N1) & rimg(N1,S,N2) & rimg(Q,S,N3) & rimg(R,N3,N4) & N2 neq N4
,2000,_CONSTR,_RES).

get_time(Tend).


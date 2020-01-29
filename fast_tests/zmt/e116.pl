use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% domInv
inv(R,N1) & dom(N1,N2) & nran(R,N2)
,2000,_CONSTR,_RES).

get_time(Tend).


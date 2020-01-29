use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% unitDres
dom(R,N1) & X nin N1 & dres({X},R,N2) & N2 neq {}
,2000,_CONSTR,_RES).

get_time(Tend).


use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% R;S = (R |> dom S) ; (ran R <| S)
dom(S,M1) & rres(R,M1,M2) & ran(R,M3) & dres(M3,S,M4) & comp(M2,M4,M5) & ncomp(R,S,M5)

,2000,_CONSTR,_RES).

get_time(Tend).


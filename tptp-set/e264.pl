use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET312-6.p (2)
% Range only considers ordered pairs
% indirect encoding
X = {M1/M2} & ran(X,M3) & npair(M1)
,2000,_CONSTR,_RES).

get_time(Tend).


use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET396-6.p
% Domain of composition 1
comp(Xr,Yr,M1) & dom(M1,M2) & dom(Xr,M3) & nsubset(M2,M3)

,2000,_CONSTR,_RES).

get_time(Tend).


use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET246-6.p
% Restriction with null class 2
nrestrict(Xr,{},Y,{})

,2000,_CONSTR,_RES).

get_time(Tend).


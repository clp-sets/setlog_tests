use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET267-6.p
% Domain is monotonic 4
dom(X,M1) & un(M1,M2,U) & disj(M1,M2) & un(X,M3,cp(U,U)) & disj(X,M3) & dom(M3,M4) & nsubset(M2,M4)

,2000,_CONSTR,_RES).

get_time(Tend).


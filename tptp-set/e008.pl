use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET008-1.p
% (X \ Y) ^ Y = the empty set
diff(B,A,Bda) & inters(A,Bda,Ai_bda) & Ai_bda neq {}

,2000,_CONSTR,_RES).

get_time(Tend).


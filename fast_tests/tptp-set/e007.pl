use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET007-1.p
% Intersection distributes over union
un(B,C,Buc) & inters(A,B,Aib) & inters(A,C,Aic) & ninters(A,Buc,Ai_buc) & un(Aib,Aic,Ai_buc)

,2000,_CONSTR,_RES).

get_time(Tend).


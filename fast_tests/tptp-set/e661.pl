use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET921+1 : TPTP v7.0.0. Released v3.2.0. (1)
% Problem  : in(A,difference(B,singleton(C))) <=> ( in(A,B) & A != C )
diff(B,{C},M1) & A in M1 & (A nin B or A = C)

,2000,_CONSTR,_RES).

get_time(Tend).


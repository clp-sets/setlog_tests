use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
%
% A*B /\ C*D = (A /\ C) * (B /\ D)
%
%
inters(cp(A,B),cp(C,D),N1) &
inters(A,C,N4) &
inters(B,D,N5) &
N1 neq cp(N4,N5)


,2000,_CONSTR,_RES).

get_time(Tend).


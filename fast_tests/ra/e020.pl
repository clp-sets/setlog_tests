use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
%
% A*B || C*D <=> A||C or B||D
%
(disj(cp(A,B),cp(C,D)) & ndisj(A,C) & ndisj(B,D))
or
((disj(A,C) or disj(B,D)) & N in cp(A,B) & N in cp(C,D))


,2000,_CONSTR,_RES).

get_time(Tend).


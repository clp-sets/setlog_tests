use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL015+1.p
% TOP is idempotent w.r.t. composition
%
% the goal should be written as
% ncomp(cp(U1,U2),cp(U3,U4),cp(U1,U4)) & ndisj(U2,U3)
% but comp is not yet implemented for cp
% then we write it as
%
ncomp(cp(U1,U2),cp(U2,U3),cp(U1,U3)) & U2 neq {}
,2000,_CONSTR,_RES).

get_time(Tend).


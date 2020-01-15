use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% ndresCross
X in A & diff(cp(A,B),cp({X},B),M1) & ndares({X},cp(A,B),M1)

,2000,_CONSTR,_RES).

get_time(Tend).


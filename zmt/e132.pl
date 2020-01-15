use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% inImageInv 1
pfun(F) & inv(F,N1) & rimg(N1,S,N2) & X in N2 & dom(F,N3) & apply(F,X,N4) & (X nin N3 or N4 nin S)
,2000,_CONSTR,_RES).

get_time(Tend).


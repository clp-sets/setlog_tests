use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% inImageInv 2
pfun(F) & inv(F,N1) & rimg(N1,S,N2) & dom(F,N3) & apply(F,X,N4) & X in N3 & N4 in S & X nin N2
,2000,_CONSTR,_RES).

get_time(Tend).


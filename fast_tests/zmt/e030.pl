use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% applyComp
%pfun(F) & pfun(G) & dompf(F,N1) & X in N1 & apply(F,X,N2) & dompf(G,N3) & N2 in N3 & comppf(F,G,N4) & napply(N4,X,N5) & apply(G,N2,N5)

%pfun(F) & pfun(G) & [X,_] in F & apply(F,X,N2) & [N2,_] in G & comppf(F,G,N4) & napply(N4,X,N5) & apply(G,N2,N5)

pfun(F) & pfun(G) & apply(F,X,N2) & comp(F,G,N4) & napply(N4,X,N5) & apply(G,N2,N5)

,2000,_CONSTR,_RES).

get_time(Tend).


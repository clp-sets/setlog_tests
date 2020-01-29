use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
un(cp({1,2,3,4,5,6,7,8,9,0,11,12,13,
       14,15,16,17,18,19,20,21,22,23,24,25,26},
      {a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z}
     ),
   {bottom},Z)

,2000,_CONSTR,_RES).

get_time(Tend).


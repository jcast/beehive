%%%-------------------------------------------------------------------
%%% File    : beehive.erl
%%% Author  : Ari Lerner
%%% Description : 
%%%
%%% Created :  Thu Oct  8 18:29:29 PDT 2009
%%%-------------------------------------------------------------------

-module (beehive).
-include ("beehive.hrl").
-include ("common.hrl").
-behaviour(application).

-export([start/0, start/2, stop/0, stop/1]).

start() -> start([], []).
start(_Type, _Args) -> 
  beehive_sup:start_link().

stop() -> stop([]).
stop(_State) -> ok.

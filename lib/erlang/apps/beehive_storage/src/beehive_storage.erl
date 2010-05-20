%%%-------------------------------------------------------------------
%%% File    : storage.erl
%%% Author  : Ari Lerner
%%% Description : 
%%%
%%% Created :  Thu Dec  3 01:05:11 PST 2009
%%%-------------------------------------------------------------------

-module (beehive_storage).

-include ("beehive.hrl").
-behaviour(application).

-export([start/2, stop/1]).

start(_Type, Args) -> beehive_storage_sup:start_link(Args).

stop(_State) -> ok.

%%
%% src/leo_nlm_proto4_svc was generated by erpcgen (do not edit)
%%
-module(leo_nlm_proto4_svc).
-include("leo_nlm_proto4.hrl").
-export([nlm_prog_4/5]).
-export([init/1, handle_call/3, handle_cast/2, 
         handle_info/2, terminate/2]).

init(Args) ->
    leo_nlm_proto4_server:init(Args).

handle_call(Req, From, S) ->
    leo_nlm_proto4_server:handle_call(Req, From, S).

handle_cast(Req, S) ->
    leo_nlm_proto4_server:handle_cast(Req, S).

handle_info(Req, S) ->
    leo_nlm_proto4_server:handle_info(Req, S).

terminate(Reason, S) ->
    leo_nlm_proto4_server:terminate(Reason, S).

nlm_prog_4(Proc, Bin, Offset, Clnt, State) ->
    case Proc of
        0 ->
            case
                catch leo_nlm_proto4_server:nlmproc4_null_4(Clnt, State)
            of
                {reply,_Res,NState} ->
                    {success,[],NState};
                Else ->
                    Else
            end;
        1 ->
            {_1,_2} = leo_nlm_proto4_xdr:dec_nlm4_testargs(Bin, Offset),
            case
                catch
                    leo_nlm_proto4_server:nlmproc4_test_4(_1,
                                                          Clnt,
                                                          State)
            of
                {reply,_Res,NState} ->
                    {success,
                     leo_nlm_proto4_xdr:enc_nlm4_testres(_Res),
                     NState};
                Else ->
                    Else
            end;
        2 ->
            {_1,_2} = leo_nlm_proto4_xdr:dec_nlm4_lockargs(Bin, Offset),
            case
                catch
                    leo_nlm_proto4_server:nlmproc4_lock_4(_1,
                                                          Clnt,
                                                          State)
            of
                {reply,_Res,NState} ->
                    {success,
                     leo_nlm_proto4_xdr:enc_nlm4_res(_Res),
                     NState};
                Else ->
                    Else
            end;
        3 ->
            {_1,_2} = leo_nlm_proto4_xdr:dec_nlm4_cancargs(Bin, Offset),
            case
                catch
                    leo_nlm_proto4_server:nlmproc4_cancel_4(_1,
                                                            Clnt,
                                                            State)
            of
                {reply,_Res,NState} ->
                    {success,
                     leo_nlm_proto4_xdr:enc_nlm4_res(_Res),
                     NState};
                Else ->
                    Else
            end;
        4 ->
            {_1,_2} =
                leo_nlm_proto4_xdr:dec_nlm4_unlockargs(Bin, Offset),
            case
                catch
                    leo_nlm_proto4_server:nlmproc4_unlock_4(_1,
                                                            Clnt,
                                                            State)
            of
                {reply,_Res,NState} ->
                    {success,
                     leo_nlm_proto4_xdr:enc_nlm4_res(_Res),
                     NState};
                Else ->
                    Else
            end;
        5 ->
            {_1,_2} = leo_nlm_proto4_xdr:dec_nlm4_testargs(Bin, Offset),
            case
                catch
                    leo_nlm_proto4_server:nlmproc4_granted_4(_1,
                                                             Clnt,
                                                             State)
            of
                {reply,_Res,NState} ->
                    {success,
                     leo_nlm_proto4_xdr:enc_nlm4_res(_Res),
                     NState};
                Else ->
                    Else
            end;
        6 ->
            {_1,_2} = leo_nlm_proto4_xdr:dec_nlm4_testargs(Bin, Offset),
            case
                catch
                    leo_nlm_proto4_server:nlmproc4_test_msg_4(_1,
                                                              Clnt,
                                                              State)
            of
                {reply,_Res,NState} ->
                    {success,[],NState};
                Else ->
                    Else
            end;
        7 ->
            {_1,_2} = leo_nlm_proto4_xdr:dec_nlm4_lockargs(Bin, Offset),
            case
                catch
                    leo_nlm_proto4_server:nlmproc4_lock_msg_4(_1,
                                                              Clnt,
                                                              State)
            of
                {reply,_Res,NState} ->
                    {success,[],NState};
                Else ->
                    Else
            end;
        8 ->
            {_1,_2} = leo_nlm_proto4_xdr:dec_nlm4_cancargs(Bin, Offset),
            case
                catch
                    leo_nlm_proto4_server:nlmproc4_cancel_msg_4(_1,
                                                                Clnt,
                                                                State)
            of
                {reply,_Res,NState} ->
                    {success,[],NState};
                Else ->
                    Else
            end;
        9 ->
            {_1,_2} =
                leo_nlm_proto4_xdr:dec_nlm4_unlockargs(Bin, Offset),
            case
                catch
                    leo_nlm_proto4_server:nlmproc4_unlock_msg_4(_1,
                                                                Clnt,
                                                                State)
            of
                {reply,_Res,NState} ->
                    {success,[],NState};
                Else ->
                    Else
            end;
        10 ->
            {_1,_2} = leo_nlm_proto4_xdr:dec_nlm4_testargs(Bin, Offset),
            case
                catch
                    leo_nlm_proto4_server:nlmproc4_granted_msg_4(_1,
                                                                 Clnt,
                                                                 State)
            of
                {reply,_Res,NState} ->
                    {success,[],NState};
                Else ->
                    Else
            end;
        11 ->
            {_1,_2} = leo_nlm_proto4_xdr:dec_nlm4_testres(Bin, Offset),
            case
                catch
                    leo_nlm_proto4_server:nlmproc4_test_res_4(_1,
                                                              Clnt,
                                                              State)
            of
                {reply,_Res,NState} ->
                    {success,[],NState};
                Else ->
                    Else
            end;
        12 ->
            {_1,_2} = leo_nlm_proto4_xdr:dec_nlm4_res(Bin, Offset),
            case
                catch
                    leo_nlm_proto4_server:nlmproc4_lock_res_4(_1,
                                                              Clnt,
                                                              State)
            of
                {reply,_Res,NState} ->
                    {success,[],NState};
                Else ->
                    Else
            end;
        13 ->
            {_1,_2} = leo_nlm_proto4_xdr:dec_nlm4_res(Bin, Offset),
            case
                catch
                    leo_nlm_proto4_server:nlmproc4_cancel_res_4(_1,
                                                                Clnt,
                                                                State)
            of
                {reply,_Res,NState} ->
                    {success,[],NState};
                Else ->
                    Else
            end;
        14 ->
            {_1,_2} = leo_nlm_proto4_xdr:dec_nlm4_res(Bin, Offset),
            case
                catch
                    leo_nlm_proto4_server:nlmproc4_unlock_res_4(_1,
                                                                Clnt,
                                                                State)
            of
                {reply,_Res,NState} ->
                    {success,[],NState};
                Else ->
                    Else
            end;
        15 ->
            {_1,_2} = leo_nlm_proto4_xdr:dec_nlm4_res(Bin, Offset),
            case
                catch
                    leo_nlm_proto4_server:nlmproc4_granted_res_4(_1,
                                                                 Clnt,
                                                                 State)
            of
                {reply,_Res,NState} ->
                    {success,[],NState};
                Else ->
                    Else
            end;
        20 ->
            {_1,_2} = leo_nlm_proto4_xdr:dec_nlm4_shareargs(Bin, Offset),
            case
                catch
                    leo_nlm_proto4_server:nlmproc4_share_4(_1,
                                                           Clnt,
                                                           State)
            of
                {reply,_Res,NState} ->
                    {success,
                     leo_nlm_proto4_xdr:enc_nlm4_shareres(_Res),
                     NState};
                Else ->
                    Else
            end;
        21 ->
            {_1,_2} = leo_nlm_proto4_xdr:dec_nlm4_shareargs(Bin, Offset),
            case
                catch
                    leo_nlm_proto4_server:nlmproc4_unshare_4(_1,
                                                             Clnt,
                                                             State)
            of
                {reply,_Res,NState} ->
                    {success,
                     leo_nlm_proto4_xdr:enc_nlm4_shareres(_Res),
                     NState};
                Else ->
                    Else
            end;
        22 ->
            {_1,_2} = leo_nlm_proto4_xdr:dec_nlm4_lockargs(Bin, Offset),
            case
                catch
                    leo_nlm_proto4_server:nlmproc4_nm_lock_4(_1,
                                                             Clnt,
                                                             State)
            of
                {reply,_Res,NState} ->
                    {success,
                     leo_nlm_proto4_xdr:enc_nlm4_res(_Res),
                     NState};
                Else ->
                    Else
            end;
        23 ->
            {_1,_2} = leo_nlm_proto4_xdr:dec_nlm4_notify(Bin, Offset),
            case
                catch
                    leo_nlm_proto4_server:nlmproc4_free_all_4(_1,
                                                              Clnt,
                                                              State)
            of
                {reply,_Res,NState} ->
                    {success,[],NState};
                Else ->
                    Else
            end
    end.
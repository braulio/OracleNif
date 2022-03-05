
#include <erl_nif.h>
#include "dpi.h"


ERL_NIF_TERM context_create( ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[] );
ERL_NIF_TERM context_destroy( ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[] );
ERL_NIF_TERM context_getClientVersion( ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[] );

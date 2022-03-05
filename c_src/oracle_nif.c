// Oracle_nif.c
// Tem a função juntar os demais NIFs numa única LIB.
// Bráulio Alves de Lima - 2 de Março de 2022


#include <erl_nif.h>
#include "somar_nif.h"
#include "dpiConn_nif.h"
#include "dpiContext_nif.h"


// static ERL_NIF_TERM somar_nif(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
// {
//   int a, b, result;
//   enif_get_int(env, argv[0], &a);
//   enif_get_int(env, argv[1], &b);
//   result = 10;
//   return enif_make_int(env, result);
// }


static ErlNifFunc nif_funcs[] = {
  {"somar", 2, somar_nif},

};

ERL_NIF_INIT(Elixir.OracleNif, nif_funcs, NULL, NULL, NULL, NULL)


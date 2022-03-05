#include <erl_nif.h>
#include "somar_nif.h"

ERL_NIF_TERM somar_nif(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
  int a, b, result;
  enif_get_int(env, argv[0], &a);
  enif_get_int(env, argv[1], &b);
  result = a + b;
  return enif_make_int(env, result);
}
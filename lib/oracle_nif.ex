defmodule OracleNif do
  @on_load :load_nifs

  def load_nifs do
    ## Lembrando que a lib libodpic será copiada para a pasta priv no _build
    :erlang.load_nif(:code.priv_dir(:oracle_nif) ++ '/libodpic', 0)

  end

  def somar(_a, _b) do
    raise "NIF somar not implemented"
  end


end

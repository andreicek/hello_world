defmodule HelloWorld do
  require Logger

  def hello do
    Logger.debug("testing")

    :world
  end
end

defmodule MqttApp do

  def start do
    {:ok, _} =
      Tortoise.Supervisor.start_child(
        client_id: :a,
        handler: {MqttApp.Handler, [name: :a]},
        server: {Tortoise.Transport.Tcp, host: 'localhost', port: 1883},
        subscriptions: [{"test/test1", 0}])

    {:ok, _} =
      Tortoise.Supervisor.start_child(
        client_id: :b,
        handler: {MqttApp.Handler, [name: :b]},
        server: {Tortoise.Transport.Tcp, host: 'localhost', port: 1883},
        subscriptions: [{"test/test2", 0}])

    {:ok, _} =
      Tortoise.Supervisor.start_child(
        client_id: :aa,
        handler: {MqttApp.Handler, [name: :b]},
        server: {Tortoise.Transport.Tcp, host: 'localhost', port: 1883}
      )

  end

  def publishmsg(client, tpc, msg) do
    Tortoise.publish(client, tpc, msg)
  end
end


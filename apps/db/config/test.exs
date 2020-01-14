use Mix.Config

config :db, Db.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "dc_automate_test",
  username: "postgres",
  password: "",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :logger,
  backends: [:console],
  compile_time_purge_level: :debug

import_config "test.secret.exs"
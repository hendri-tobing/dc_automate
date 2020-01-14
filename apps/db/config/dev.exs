use Mix.Config

config :db, Db.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "dc_automate_dev",
  username: "postgres",
  password: ""
  hostname: "localhost",
  pool_size: 10

import_config "dev.secret.exs"
use Mix.Config

config :db, Db.Repo,
  database: "db_repo",
  username: "postgres",
  password: "",
  hostname: "localhost"

import_config "prod.secret.exs"
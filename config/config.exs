import Config

config :replicate,
  replicate_client: Replicate.Client,
  replicate_poll_interval: 500

import_config "#{config_env()}.exs"
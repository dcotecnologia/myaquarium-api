# frozen_string_literal: true
require "config"

Config.setup do |config|
  # Name of the constant exposing loaded settings
  config.const_name = "Settings"

  # Ability to remove elements of the array set in earlier loaded settings file. For example value: '--'.
  #
  # config.knockout_prefix = nil

  # Overwrite an existing value when merging a `nil` value.
  # When set to `false`, the existing value is retained after merge.
  #
  # config.merge_nil_values = true

  # Overwrite arrays found in previously loaded settings file. When set to `false`, arrays will be merged.
  #
  # config.overwrite_arrays = true

  # Load environment variables from the `ENV` object and override any settings defined in files.
  #
  config.use_env = true

  # Define ENV variable prefix deciding which variables to load into config.
  #
  # Reading variables from ENV is case-sensitive. If you define lowercase value below, ensure your ENV variables are
  # prefixed in the same way.
  #
  # When not set it defaults to `config.const_name`.
  #
  config.env_prefix = ""

  # What string to use as level separator for settings loaded from ENV variables. Default value of '.' works well
  # with Heroku, but you might want to change it for example for '__' to easy override settings from command line, where
  # using dots in variable names might not be allowed (eg. Bash).
  #
  config.env_separator = "_"

  # Ability to process variables names:
  #   * nil  - no change
  #   * :downcase - convert to lower case
  #
  config.env_converter = :downcase

  # Parse numeric values as integers instead of strings.
  #
  config.env_parse_values = true

  # Validate presence and type of specific config values. Check https://github.com/dry-rb/dry-validation for details.
  #
  config.schema do
    required(:api).schema do
      required(:auth).schema do
        required(:devise_jwt_secret_key).filled
      end
    end
    required(:system).schema do
      required(:db).schema do
        required(:host).filled
      end
      required(:default_email).filled(format?: /^(([A-Za-z0-9]+_+)|([A-Za-z0-9]+-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6}$/i)
      required(:host).filled
      required(:rails_env).filled
    end
  end

  # Evaluate ERB in YAML config files at load time.
  #
  # config.evaluate_erb_in_yaml = true
end

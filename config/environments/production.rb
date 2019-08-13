# frozen_string_literal: true

Rails.application.configure do
  config.action_controller.perform_caching = true
  config.active_support.deprecation = :notify
  config.cache_classes = true
  config.cache_store = :redis_cache_store, { driver: :hiredis, compress: true, timeout: 1 }
  config.consider_all_requests_local = false
  config.eager_load = true
  config.i18n.fallbacks = true
  config.log_formatter = ::Logger::Formatter.new
  config.log_level = :debug
  config.log_tags = %i[request_id]
  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?
end

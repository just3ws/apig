# frozen_string_literal: true

Rails.application.configure do
  config.action_controller.perform_caching = false
  config.active_support.deprecation = :log
  config.cache_classes = false
  config.cache_store = :redis_cache_store, { driver: :hiredis, compress: false, timeout: 1 }
  config.consider_all_requests_local = true
  config.eager_load = false
end

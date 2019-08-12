# frozen_string_literal: true

Rails.application.configure do
  config.action_controller.perform_caching = false
  config.active_support.deprecation = :log
  config.cache_classes = false
  config.cache_store = :null_store
  config.consider_all_requests_local = true
  config.eager_load = false
end

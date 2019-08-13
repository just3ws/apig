# frozen_string_literal: true

Circuitbox.configure do |config|
  # config.default_circuit_store = Moneta.new(:Redis) # Circuitbox::MemoryStore.new
  # config.default_notifier = Circuitbox::Notifier::Null.new
  # config.default_timer = Circuitbox::Timer::Simple.new
  # config.default_logger = Rails.logger
end

require_relative 'api'

module GeocoderService
  class Client
    include GeocoderService::Api

    extend Dry::Initializer[undefined: false]

    option :queue, default: -> { create_queue }

    private

    def create_queue
      channel = RabbitMq.channel
      channel.queue('geocoding', durable:true)
    end

    def publish(payload, opts = {})
      @queue.publish(
        payload,
        opts.merge(
          persistent: true,
          app_id: Settings.app.name,
          headers: {
            request_id: Thread.current[:request_id]
          }
        )
      )
    end
  end
end

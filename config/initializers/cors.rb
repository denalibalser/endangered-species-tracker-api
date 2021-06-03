Rails.application.config.middleware.insert_before 0, Rack::Cors do
    # allow do
    #   origins 'http://localhost:3002'
    #   resource '*', headers: :any, methods: [:get, :post, :patch, :put, :delete], credentials: true
    # end

    # configuration for deployed version of app:
    allow do
      origins '*'

      resource '*', 
      headers: :any, 
      methods: [:get, :post, :patch, :put, :delete] credentials: true
    end
end
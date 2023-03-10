Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origin 'http://127.0.0.1:5173'
    resource '*', headers: :any, methods: [:get, :post, :update, :create]
  end
end
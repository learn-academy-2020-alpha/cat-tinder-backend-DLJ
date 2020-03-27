<<<<<<< HEAD
# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

=======
>>>>>>> 6d89f9b6bbe32ac333c428d60105e997fff85b6c
Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins '*'  # <- change this to allow requests from any domain while in development.
  
      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head]
    end
  end
require_relative "config/application"

app = BestQuotes::Application.new

use Rack::ContentType

app.route do
  match "", "quotes#index"

  # default routes
  match ":controller/:id/:action"
  match ":controller/:id",
    :default => { "action" => "show" }
  match ":controller",
    :default => { "action" => "index" }
end

run app

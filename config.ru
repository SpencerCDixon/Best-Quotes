require_relative "config/application"

app = BestQuotes::Application.new
# Instantiate a new rack application

use Rack::ContentType

app.route do
  # Calling #route creates the @route_obj
  match "", "quotes#index"
  # Matches the home route to quotes#index

  match ":controller/redirect/", default: { "action" => "redirect" }

  # default routes
  match ":controller/:id/:action"
  # Any word after an id will hit a specific action like edit or preview

  match ":controller/:id",
    :default => { "action" => "show" }
  # Providing an id will try and hit show action

  match ":controller",
    :default => { "action" => "index" }
  # Will execute index action by default 
end

run app

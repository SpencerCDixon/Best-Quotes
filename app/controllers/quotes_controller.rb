require_relative '../models/quote'
class QuotesController < ::Rulers::Controller
  def index
    quotes = Quote.all
    render_response :index, quotes: quotes
  end

  def show
    quote = Quote.find(params["id"])
    render_response :quote, obj: quote
  end

  def edit
  end
end

class WelcomeController < ApplicationController

  def index
  end

  def stock
  end

  def show
    symbol = params[:symbol].upcase
    quote = YahooFinance::get_standard_quotes(symbol)
    stock = quote[symbol]
    @price = stock.lastTrade
  end

end

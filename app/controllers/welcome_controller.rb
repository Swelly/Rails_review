class WelcomeController < ApplicationController

  def index
  end

  def stock
  end
#going for a class method to call from the model
  def show
    symbol = params[:symbol].upcase
    @stock = Stock.quote(symbol)
  end
end

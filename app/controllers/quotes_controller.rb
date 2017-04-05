class QuotesController < ApplicationController
  def index
    @quote = Quote.order("RANDOM()").first
  end

  def create
    @quote = Quote.create(quote_params)
    if @quote.invalid?
      flash[:error] = "<strong>Could not save your quote</strong> 😔 The text you entered is either too short or too long."
    end
    redirect_to root_path
  end

  def about

  end

  private

  def quote_params
    params.require(:quote).permit(:quote, :author)
  end
end

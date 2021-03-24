class PhrasesController < ApplicationController

  def index
    phrases = Phrase.all
    render  json: phrases, except: [:created_at, :updated_at]
  end 
end
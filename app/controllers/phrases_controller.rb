class PhrasesController < ApplicationController

  def index
    category = params['category_id']
    phrases = category ? Phrase.where('category_id = ?', category) : Phrase.all
    render  json: phrases, except: [:created_at, :updated_at]
  end 
end
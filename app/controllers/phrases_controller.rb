class PhrasesController < ApplicationController

  def index
    puts params
    category = params['category_id']
    phrases = category ? Phrase.where('category_id = ?', category) : Phrase.all
    
    if params['random']
      phrases = phrases.order(Arel.sql('RANDOM()')).first
    end
    
    
    render  json: phrases, except: [:created_at, :updated_at]
  end 


end
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

  def stats_elapsed_time
    records = Phrase.find(params[:phrase_id]).game_records.order(:elapsed_time)
    body = { 
      fastest_record: records.first.elapsed_time 
    }
    body[:slowest_record] = records.count < 2 ? nil : records.last.elapsed_time
    render json: body, status: 200
  end
end
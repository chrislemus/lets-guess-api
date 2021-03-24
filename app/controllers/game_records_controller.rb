class GameRecordsController < ApplicationController
  def index
    game_records = GameRecord.all
    render  json: game_records, except: [:created_at, :updated_at]
  end 
  def create
    game_record = GameRecord.new(game_record_params)
    if game_record.save
      render json: game_record
    else
      render json: {status: "error", code: 4000, message: "missing field"}
    end
    
  end 

  private


  def game_record_params
    # puts params
    DeserializablePost.call(json_hash)
    params.require(:game_record).permit(:username,  :elapsed_time, :phrase_id)
  end
end
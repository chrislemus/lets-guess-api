class GameRecordsController < ApplicationController
  def index
    phrase = params['phrase_id']
    game_records = phrase ? GameRecord.where('phrase_id = ?', phrase).order(:elapsed_time) : GameRecord.all
    body = {}
    if phrase
      body[:fastest_record] = game_records.count > 0 ? game_records.first.elapsed_time : nil
      body[:slowest_record] = game_records.count > 1 ? game_records.last.elapsed_time : nil
    end
    body[:game_records] = game_records
    render  json: body, except: [:created_at, :updated_at]
  end 


  def create
    game_record = GameRecord.new(game_record_params)
    if game_record.save
      render json: game_record, status: 201
    else
      body = {
        errors:  game_record.errors.full_messages
      }
      render json: body, status: 400
    end
  end 



  private

  def game_record_params
    params.require(:game_record).permit(:username,  :elapsed_time, :phrase_id)
  end
end
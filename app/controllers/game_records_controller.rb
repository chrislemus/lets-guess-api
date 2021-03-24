class GameRecordsController < ApplicationController
  def index
    phrase = params['phrase_id']
    game_records = phrase ? GameRecord.where('phrase_id = ?', phrase) : GameRecord.all
    render  json: game_records, except: [:created_at, :updated_at]
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

  def time_stats
    all_records = GameRecord.all.order(:elapsed_time)
    body = { fastest_record: all_records.first.elapsed_time slowest_record:  }
    body[:slowest_record] = all_records.count < 2 ? nil : all_records.last.elapsed_time
    render json: body, status: 200
  end

  private

  def game_record_params
    params.require(:game_record).permit(:username,  :elapsed_time, :phrase_id)
  end
end
class Api::V1::RaceEventController < Api::V1Controller

  def next_heat
    @current_race_event = RaceEvent.where(active: true).first

    if !@current_race_event
      render stastus: 404, text: 'found no active race event'
      return
    end

    @current_race_event.next_heat
    render status: 200, text: 'next heat done'
  end
end

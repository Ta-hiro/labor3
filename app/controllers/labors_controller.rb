class LaborsController < ApplicationController

  def new
    @labor = Labor.new
    @wedays = ['(日)','(月)','(火)','(水)','(木)','(金)','(土)']
  end

  def create
  end

  private
  def labor_params
    params.require(:labor).permit(:work_day, :start_time_id, :closing_time_id, :comment).merge(user_id: current_user.id)
  end
end

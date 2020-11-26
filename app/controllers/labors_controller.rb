class LaborsController < ApplicationController

  def new
    @labor = Labor.new
    @wedays = ['(日)','(月)','(火)','(水)','(木)','(金)','(土)']
  end

  def create
    @wedays = ['(日)','(月)','(火)','(水)','(木)','(金)','(土)']
    @labor = Labor.new(labor_params)
    if @labor.save
      redirect_to  new_labor_path
    else
      render action: :new
    end
  end

  def show
  end

  private
  def labor_params
    params.require(:labor).permit(:work_day, :start_time_id, :closing_time_id, :comment).merge(user_id: current_user.id)
  end
end

# te
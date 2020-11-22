class MessagesController < ApplicationController

  def index
    @user = User.all
    # @messeges = Message.all
    @messege = Message.new
  end

  def new
    @messege = Message.new
  end

  def create
    @messege = Message.new(message_params)
    if @messege.save
      redirect_to root_path
    else
      render action: :index
    end
  end

  private
  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end
end

# :image

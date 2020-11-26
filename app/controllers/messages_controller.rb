class MessagesController < ApplicationController

  def index
    @user = User.all
    @message = Message.new
    @messages = Message.all
    @wedays = ['(日)','(月)','(火)','(水)','(木)','(金)','(土)']
  end

  def new
  end

  def show
  end

  def create
    @wedays = ['(日)','(月)','(火)','(水)','(木)','(金)','(土)']
    @user = User.all
    @messages = Message.all
    @message = Message.new(message_params)
    if @message.save
      redirect_to root_path
    else
      render action: :index
    end
  end

  private
  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end
  
end

# :image

class ConversationsController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index

  def index
    @conversations = Conversation.where(user: current_user).select {|conversation| !conversation.messages.empty?}
    @business_conversations = Conversation.where(business: current_user.businesses.pluck(:id))
    @messages = current_user.messages
    @all_conversations = Message.all.includes(:businesses) #should be all the conversations a user has
    #this should be done within policy scope
    #.includes business avoid n+1 query
  end

  def show
    @conversation = Conversation.find(params[:id])
    @conversations = Conversation.where(user: current_user).select {|conversation| !conversation.messages.empty?}
    @business_conversations = Conversation.where(business: current_user.businesses.pluck(:id))
    render :index
    authorize @conversation
    #authorize policy scope
  end
end

class ConversationsController < ApplicationController
  def index
    @conversations = policy_scope(Conversation)
    @messages = current_user.messages
    @all_conversations = Message.all.includes(:businesses) #should be all the conversations a user has
    #this should be done within policy scope
    #.includes business avoid n+1 query
  end

  def show
    @conversation = Conversation.find(params[:id])
    #authorize policy scope
  end
end

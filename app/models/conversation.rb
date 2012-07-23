class Conversation < ActiveRecord::Base
  
  has_many :comments
  belongs_to :user
  belongs_to :board
  validates_presence_of :title
  attr_accessible :board_id, :id, :title, :user_id
  validates_length_of :title, :maximum=>50



# GET /conversations/new
#def new
 # @conversation = Conversation.new
  #@comment = @conversation.comments.build

  #respond_to do |format|
   # format.html # new.html.erb
  #end
#end

# POST /conversations
#def create
 # @conversation = Conversation.new(params[:conversation])
 # @comment = @conversation.comments.build(params[:comment])
 # @conversation.user_id = @comment.user_id = current_user.id
 # @conversation.board = @board
  
  #respond_to do |format|
   # if current_user && @conversation.save
   #   format.html { redirect_to(board_path(@board), :notice => 'Your Post was created') }
   # else
    #  format.html { render :action => "new" }
    #end
  #end
#end





end

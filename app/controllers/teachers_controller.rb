class TeachersController < ApplicationController
<<<<<<< HEAD
  

  
=======
>>>>>>> dca75f7c24244f2a9b84649ee8642ecab0988738
  # GET /teachers
  # GET /teachers.json
  def index
    
<<<<<<< HEAD
    @teachers = Teacher.page(params[:page]).per(5).order(:name)
    #@teachers = Teacher.all
    @votes = Vote.all
=======
    @teachers = Teacher.search(params[:search], params[:page])
    #@teachers = Teacher.all

>>>>>>> dca75f7c24244f2a9b84649ee8642ecab0988738
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teachers }
    end
  end

  # GET /teachers/1
  # GET /teachers/1.json
  def show
<<<<<<< HEAD
    @current_user = User.first
   @teacher = Teacher.find(params[:id])
        @vote = @teacher.votes.build
@vote = Vote.new
=======
    @teacher = Teacher.find(params[:id])

>>>>>>> dca75f7c24244f2a9b84649ee8642ecab0988738
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @teacher }
    end
  end
<<<<<<< HEAD
  
  def search
  @teachers = Teacher.search params[:search]
    respond_to do |format|
     
 
    format.html # index.html.erb
      format.json { render json: @teachers }
  end
end
=======
>>>>>>> dca75f7c24244f2a9b84649ee8642ecab0988738

  # GET /teachers/new
  # GET /teachers/new.json
  def new
    @teacher = Teacher.new
<<<<<<< HEAD
 @vote = @teacher.votes.build
=======

>>>>>>> dca75f7c24244f2a9b84649ee8642ecab0988738
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @teacher }
    end
  end

  # GET /teachers/1/edit
  def edit
    @teacher = Teacher.find(params[:id])
  end

  # POST /teachers
  # POST /teachers.json
  def create
    @teacher = Teacher.new(params[:teacher])
<<<<<<< HEAD
  @vote = @teacher.votes.build(params[:vote])
   @vote.user_id = current_user.id
   @vote.teacher_id = @teacher.id
=======
>>>>>>> dca75f7c24244f2a9b84649ee8642ecab0988738

    respond_to do |format|
      if @teacher.save
        format.html { redirect_to @teacher, notice: 'Teacher was successfully created.' }
        format.json { render json: @teacher, status: :created, location: @teacher }
      else
        format.html { render action: "new" }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /teachers/1
  # PUT /teachers/1.json
  def update
    @teacher = Teacher.find(params[:id])

    respond_to do |format|
      if @teacher.update_attributes(params[:teacher])
        format.html { redirect_to @teacher, notice: 'Teacher was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teachers/1
  # DELETE /teachers/1.json
  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy

    respond_to do |format|
      format.html { redirect_to teachers_url }
      format.json { head :no_content }
    end
  end
<<<<<<< HEAD
   
   def vote
           @teacher = Teacher.find(params[:id])
    @vote = @teacher.votes.build
    
    respond_to do |format|
      format.html #reply.html.erb
    end
   end
  
  def save_vote
       if !current_user
      redirect_to(signin_path, :notice =>"Please login before voting")
      return 1;
    end
    
    if Teacher.exists?(params[:id])
      @teacher = Teacher.find(params[:id])
      @vote = @teacher.votes.build(params[:vote])
      @vote.user_id = current_user.id
      @vote.teacher_id = @teacher.id
    else
      redirect_to(root_path, :notice =>"Please specify a valid teacher")
    end
        
    respond_to do |format|
      if current_user && @vote.save
        format.html { redirect_to(root_path, :notice => 'Your vote was posted') }
      else
        format.html { render :action => "new"}
      end
    end
end 
  end

=======
end
>>>>>>> dca75f7c24244f2a9b84649ee8642ecab0988738

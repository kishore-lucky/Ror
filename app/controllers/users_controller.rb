class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]
  require 'csv'
  # GET /users or /users.json
  def index
    @users = User.all
    respond_to do |format|
      format.html
      format.pdf do
        pdf = MemberPdf.new(@users)
        send_data pdf.render , filename: 'member.pdf' , type: 'application/pdf', disposition: "inline"
      end
      format.csv do
      
      end
    end
    # respond_to do |format|
    #   format.html
    #   format.csv do 
    #     send_data User.to_csv(@users), filename: Date.today.to_s, content_type:'text/csv'
    #   end
    # end 
  end

  # GET /users/1 or /users/1.json
  def show
    # @value = 0
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)
    # @user.first_name.capitalize!
    # @user.last_name.capitalize!

    respond_to do |format|
      if @user.save
        format.html { redirect_to user_url(@user), notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_url(@user), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  # def with_task(tasks)
    # @ha = @user.joins(:tasks).where(tasks: {id: tasks})
  # end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :dob)
    end
end
# def with_task(tasks)
#   joins(:tasks).where(tasks: {id: tasks})
# end
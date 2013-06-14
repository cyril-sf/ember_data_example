class UsersController < ApplicationController
  # GET /users.json
  def index
    render json: User.all
  end

  # GET /users/1.json
  def show
    user = User.find(params[:id])
    # render json: user
    render json: {user:{id:2, name:"John Doe", message_ids: [{id: 3, type: "post"}]}}.as_json
  end

  # POST /users.json
  def create
    user = User.new(user_params)

    if user.save
      render json: user, status: :ok
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1.json
  def update
    user = User.find(params[:id])

    if user.update_attributes(user_params)
      render json: user, status: :ok
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1.json
  def destroy
    user = User.find(params[:id])
    user.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def user_params
      params.require(:user).permit(:name)
    end
end

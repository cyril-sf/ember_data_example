class CommentsController < ApplicationController
  # GET /comments.json
  def index
    render json: Comment.all
  end

  # GET /comments/1.json
  def show
    comment = Comment.find(params[:id])
    render json: comment
  end

  # POST /comments.json
  def create
    comment = Comment.new(comment_params)

    if comment.save
      render json: comment, status: :ok
    else
      render json: comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1.json
  def update
    comment = Comment.find(params[:id])

    if comment.update_attributes(comment_params)
      render json: comment, status: :ok
    else
      render json: comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1.json
  def destroy
    comment = Comment.find(params[:id])
    comment.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def comment_params
      params.require(:comment).permit(:body, :messageable_id, :messageable_type)
    end
end

class PostsController < ApplicationController
  # GET /posts.json
  def index
    render json: Post.all
  end

  # GET /posts/1.json
  def show
    post = Post.find(params[:id])
    render json: post
  end

  # POST /posts.json
  def create
    post = Post.new(post_params)

    if post.save
      render json: post, status: :ok
    else
      render json: post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1.json
  def update
    post = Post.find(params[:id])

    if post.update_attributes(post_params)
      render json: post, status: :ok
    else
      render json: post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1.json
  def destroy
    post = Post.find(params[:id])
    post.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def post_params
      params.require(:post).permit(:title)
    end
end

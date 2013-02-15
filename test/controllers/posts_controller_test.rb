require 'test_helper'

class PostsControllerTest < ActionController::TestCase

  before do
    @post = posts(:one)
  end

  def test_index
    get :index
    assert_response :success
  end

  def test_create
    assert_difference('Post.count') do
      post :create, post: { title: 'miracle' }
    end
  end

  def test_show
    get :show, id: @post
    assert_response :success
  end

  def test_update
    put :update, id: @post, post: { title: 'miracle' }
    assert_response :success
  end

  def test_destroy
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
    end
  end
end

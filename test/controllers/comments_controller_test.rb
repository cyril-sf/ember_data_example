require 'test_helper'

class CommentsControllerTest < ActionController::TestCase

  before do
    @comment = comments(:one)
  end

  def test_index
    get :index
    assert_response :success
  end

  def test_create
    assert_difference('Comment.count') do
      post :create, comment: { body: 'toto'  }
    end
  end

  def test_show
    get :show, id: @comment
    assert_response :success
  end

  def test_update
    put :update, id: @comment.to_param, comment: { body: 'tutu' }
    assert_response :success
  end

  def test_destroy
    assert_difference('Comment.count', -1) do
      delete :destroy, id: @comment
    end
  end
end

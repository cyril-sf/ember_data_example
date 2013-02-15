require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  before do
    @user = users(:one)
  end

  def test_index
    get :index
    assert_response :success
  end

  def test_create
    assert_difference('User.count') do
      post :create, user: { name: 'John' }
    end
  end

  def test_show
    get :show, id: @user
    assert_response :success
  end

  def test_update
    put :update, id: @user, user: { name: 'John' }
    assert_response :success
  end

  def test_destroy
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end
  end
end

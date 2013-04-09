require 'test_helper'

class DefinesControllerTest < ActionController::TestCase
  setup do
    @define = defines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:defines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create define" do
    assert_difference('Define.count') do
      post :create, define: { definition: @define.definition, term: @define.term }
    end

    assert_redirected_to define_path(assigns(:define))
  end

  test "should show define" do
    get :show, id: @define
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @define
    assert_response :success
  end

  test "should update define" do
    put :update, id: @define, define: { definition: @define.definition, term: @define.term }
    assert_redirected_to define_path(assigns(:define))
  end

  test "should destroy define" do
    assert_difference('Define.count', -1) do
      delete :destroy, id: @define
    end

    assert_redirected_to defines_path
  end
end

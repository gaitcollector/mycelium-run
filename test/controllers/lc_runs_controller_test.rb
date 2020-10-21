require 'test_helper'

class LcRunsControllerTest < ActionController::TestCase
  setup do
    @mycelium = mycelia(:one)
    @lc_run = lc_runs(:one)
  end

  test "should get index" do
    get :index, params: { mycelium_id: @mycelium }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { mycelium_id: @mycelium }
    assert_response :success
  end

  test "should create lc_run" do
    assert_difference('LcRun.count') do
      post :create, params: { mycelium_id: @mycelium, lc_run: @lc_run.attributes }
    end

    assert_redirected_to mycelium_lc_run_path(@mycelium, LcRun.last)
  end

  test "should show lc_run" do
    get :show, params: { mycelium_id: @mycelium, id: @lc_run }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { mycelium_id: @mycelium, id: @lc_run }
    assert_response :success
  end

  test "should update lc_run" do
    put :update, params: { mycelium_id: @mycelium, id: @lc_run, lc_run: @lc_run.attributes }
    assert_redirected_to mycelium_lc_run_path(@mycelium, LcRun.last)
  end

  test "should destroy lc_run" do
    assert_difference('LcRun.count', -1) do
      delete :destroy, params: { mycelium_id: @mycelium, id: @lc_run }
    end

    assert_redirected_to mycelium_lc_runs_path(@mycelium)
  end
end

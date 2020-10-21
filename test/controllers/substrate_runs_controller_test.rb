require 'test_helper'

class SubstrateRunsControllerTest < ActionController::TestCase
  setup do
    @mycelium = mycelia(:one)
    @substrate_run = substrate_runs(:one)
  end

  test "should get index" do
    get :index, params: { mycelium_id: @mycelium }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { mycelium_id: @mycelium }
    assert_response :success
  end

  test "should create substrate_run" do
    assert_difference('SubstrateRun.count') do
      post :create, params: { mycelium_id: @mycelium, substrate_run: @substrate_run.attributes }
    end

    assert_redirected_to mycelium_substrate_run_path(@mycelium, SubstrateRun.last)
  end

  test "should show substrate_run" do
    get :show, params: { mycelium_id: @mycelium, id: @substrate_run }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { mycelium_id: @mycelium, id: @substrate_run }
    assert_response :success
  end

  test "should update substrate_run" do
    put :update, params: { mycelium_id: @mycelium, id: @substrate_run, substrate_run: @substrate_run.attributes }
    assert_redirected_to mycelium_substrate_run_path(@mycelium, SubstrateRun.last)
  end

  test "should destroy substrate_run" do
    assert_difference('SubstrateRun.count', -1) do
      delete :destroy, params: { mycelium_id: @mycelium, id: @substrate_run }
    end

    assert_redirected_to mycelium_substrate_runs_path(@mycelium)
  end
end

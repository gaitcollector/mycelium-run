require 'test_helper'

class SpawnRunsControllerTest < ActionController::TestCase
  setup do
    @mycelium = mycelia(:one)
    @spawn_run = spawn_runs(:one)
  end

  test "should get index" do
    get :index, params: { mycelium_id: @mycelium }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { mycelium_id: @mycelium }
    assert_response :success
  end

  test "should create spawn_run" do
    assert_difference('SpawnRun.count') do
      post :create, params: { mycelium_id: @mycelium, spawn_run: @spawn_run.attributes }
    end

    assert_redirected_to mycelium_spawn_run_path(@mycelium, SpawnRun.last)
  end

  test "should show spawn_run" do
    get :show, params: { mycelium_id: @mycelium, id: @spawn_run }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { mycelium_id: @mycelium, id: @spawn_run }
    assert_response :success
  end

  test "should update spawn_run" do
    put :update, params: { mycelium_id: @mycelium, id: @spawn_run, spawn_run: @spawn_run.attributes }
    assert_redirected_to mycelium_spawn_run_path(@mycelium, SpawnRun.last)
  end

  test "should destroy spawn_run" do
    assert_difference('SpawnRun.count', -1) do
      delete :destroy, params: { mycelium_id: @mycelium, id: @spawn_run }
    end

    assert_redirected_to mycelium_spawn_runs_path(@mycelium)
  end
end

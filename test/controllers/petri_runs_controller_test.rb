require 'test_helper'

class PetriRunsControllerTest < ActionController::TestCase
  setup do
    @mycelium = mycelia(:one)
    @petri_run = petri_runs(:one)
  end

  test "should get index" do
    get :index, params: { mycelium_id: @mycelium }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { mycelium_id: @mycelium }
    assert_response :success
  end

  test "should create petri_run" do
    assert_difference('PetriRun.count') do
      post :create, params: { mycelium_id: @mycelium, petri_run: @petri_run.attributes }
    end

    assert_redirected_to mycelium_petri_run_path(@mycelium, PetriRun.last)
  end

  test "should show petri_run" do
    get :show, params: { mycelium_id: @mycelium, id: @petri_run }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { mycelium_id: @mycelium, id: @petri_run }
    assert_response :success
  end

  test "should update petri_run" do
    put :update, params: { mycelium_id: @mycelium, id: @petri_run, petri_run: @petri_run.attributes }
    assert_redirected_to mycelium_petri_run_path(@mycelium, PetriRun.last)
  end

  test "should destroy petri_run" do
    assert_difference('PetriRun.count', -1) do
      delete :destroy, params: { mycelium_id: @mycelium, id: @petri_run }
    end

    assert_redirected_to mycelium_petri_runs_path(@mycelium)
  end
end

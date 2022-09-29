require "test_helper"

class CreativeWorksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @creative_work = creative_works(:one)
  end

  test "should get index" do
    get creative_works_url
    assert_response :success
  end

  test "should get new" do
    get new_creative_work_url
    assert_response :success
  end

  test "should create creative_work" do
    assert_difference("CreativeWork.count") do
      post creative_works_url, params: { creative_work: { artist_id: @creative_work.artist_id, description: @creative_work.description, name: @creative_work.name, price: @creative_work.price } }
    end

    assert_redirected_to creative_work_url(CreativeWork.last)
  end

  test "should show creative_work" do
    get creative_work_url(@creative_work)
    assert_response :success
  end

  test "should get edit" do
    get edit_creative_work_url(@creative_work)
    assert_response :success
  end

  test "should update creative_work" do
    patch creative_work_url(@creative_work), params: { creative_work: { artist_id: @creative_work.artist_id, description: @creative_work.description, name: @creative_work.name, price: @creative_work.price } }
    assert_redirected_to creative_work_url(@creative_work)
  end

  test "should destroy creative_work" do
    assert_difference("CreativeWork.count", -1) do
      delete creative_work_url(@creative_work)
    end

    assert_redirected_to creative_works_url
  end
end

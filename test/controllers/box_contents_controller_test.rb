require 'test_helper'

class BoxContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @box_content = box_contents(:one)
  end

  test "should get index" do
    get box_contents_url
    assert_response :success
  end

  test "should get new" do
    get new_box_content_url
    assert_response :success
  end

  test "should create box_content" do
    assert_difference('BoxContent.count') do
      post box_contents_url, params: { box_content: { box_id: @box_content.box_id, content_id: @box_content.content_id } }
    end

    assert_redirected_to box_content_url(BoxContent.last)
  end

  test "should show box_content" do
    get box_content_url(@box_content)
    assert_response :success
  end

  test "should get edit" do
    get edit_box_content_url(@box_content)
    assert_response :success
  end

  test "should update box_content" do
    patch box_content_url(@box_content), params: { box_content: { box_id: @box_content.box_id, content_id: @box_content.content_id } }
    assert_redirected_to box_content_url(@box_content)
  end

  test "should destroy box_content" do
    assert_difference('BoxContent.count', -1) do
      delete box_content_url(@box_content)
    end

    assert_redirected_to box_contents_url
  end
end

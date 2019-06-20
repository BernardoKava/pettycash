require 'test_helper'

class OutflowtypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @outflowtype = outflowtypes(:one)
  end

  test "should get index" do
    get outflowtypes_url
    assert_response :success
  end

  test "should get new" do
    get new_outflowtype_url
    assert_response :success
  end

  test "should create outflowtype" do
    assert_difference('Outflowtype.count') do
      post outflowtypes_url, params: { outflowtype: { description: @outflowtype.description, name: @outflowtype.name, system_item: @outflowtype.system_item } }
    end

    assert_redirected_to outflowtype_url(Outflowtype.last)
  end

  test "should show outflowtype" do
    get outflowtype_url(@outflowtype)
    assert_response :success
  end

  test "should get edit" do
    get edit_outflowtype_url(@outflowtype)
    assert_response :success
  end

  test "should update outflowtype" do
    patch outflowtype_url(@outflowtype), params: { outflowtype: { description: @outflowtype.description, name: @outflowtype.name, system_item: @outflowtype.system_item } }
    assert_redirected_to outflowtype_url(@outflowtype)
  end

  test "should destroy outflowtype" do
    assert_difference('Outflowtype.count', -1) do
      delete outflowtype_url(@outflowtype)
    end

    assert_redirected_to outflowtypes_url
  end
end

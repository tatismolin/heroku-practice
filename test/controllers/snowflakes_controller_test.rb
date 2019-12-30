require 'test_helper'

class SnowflakesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @snowflake = snowflakes(:one)
  end

  test "should get index" do
    get snowflakes_url, as: :json
    assert_response :success
  end

  test "should create snowflake" do
    assert_difference('Snowflake.count') do
      post snowflakes_url, params: { snowflake: { shape: @snowflake.shape } }, as: :json
    end

    assert_response 201
  end

  test "should show snowflake" do
    get snowflake_url(@snowflake), as: :json
    assert_response :success
  end

  test "should update snowflake" do
    patch snowflake_url(@snowflake), params: { snowflake: { shape: @snowflake.shape } }, as: :json
    assert_response 200
  end

  test "should destroy snowflake" do
    assert_difference('Snowflake.count', -1) do
      delete snowflake_url(@snowflake), as: :json
    end

    assert_response 204
  end
end

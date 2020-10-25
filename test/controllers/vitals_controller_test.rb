require 'test_helper'

class VitalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vital = vitals(:one)
  end

  test "should get index" do
    get vitals_url, as: :json
    assert_response :success
  end

  test "should create vital" do
    assert_difference('Vital.count') do
      post vitals_url, params: { vital: { diastolic: @vital.diastolic, hr: @vital.hr, oxygen: @vital.oxygen, systolic: @vital.systolic, temp: @vital.temp, user_id: @vital.user_id, weight: @vital.weight } }, as: :json
    end

    assert_response 201
  end

  test "should show vital" do
    get vital_url(@vital), as: :json
    assert_response :success
  end

  test "should update vital" do
    patch vital_url(@vital), params: { vital: { diastolic: @vital.diastolic, hr: @vital.hr, oxygen: @vital.oxygen, systolic: @vital.systolic, temp: @vital.temp, user_id: @vital.user_id, weight: @vital.weight } }, as: :json
    assert_response 200
  end

  test "should destroy vital" do
    assert_difference('Vital.count', -1) do
      delete vital_url(@vital), as: :json
    end

    assert_response 204
  end
end

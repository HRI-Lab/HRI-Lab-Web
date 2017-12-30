require 'test_helper'

class DailyRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_record = daily_records(:one)
  end

  test "should get index" do
    get daily_records_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_record_url
    assert_response :success
  end

  test "should create daily_record" do
    assert_difference('DailyRecord.count') do
      post daily_records_url, params: { daily_record: { content: @daily_record.content } }
    end

    assert_redirected_to daily_record_url(DailyRecord.last)
  end

  test "should show daily_record" do
    get daily_record_url(@daily_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_record_url(@daily_record)
    assert_response :success
  end

  test "should update daily_record" do
    patch daily_record_url(@daily_record), params: { daily_record: { content: @daily_record.content } }
    assert_redirected_to daily_record_url(@daily_record)
  end

  test "should destroy daily_record" do
    assert_difference('DailyRecord.count', -1) do
      delete daily_record_url(@daily_record)
    end

    assert_redirected_to daily_records_url
  end
end

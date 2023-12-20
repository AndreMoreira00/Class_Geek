require "test_helper"

class TeewtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teewt = teewts(:one)
  end

  test "should get index" do
    get teewts_url
    assert_response :success
  end

  test "should get new" do
    get new_teewt_url
    assert_response :success
  end

  test "should create teewt" do
    assert_difference("Teewt.count") do
      post teewts_url, params: { teewt: { conteudo: @teewt.conteudo, user_id: @teewt.user_id } }
    end

    assert_redirected_to teewt_url(Teewt.last)
  end

  test "should show teewt" do
    get teewt_url(@teewt)
    assert_response :success
  end

  test "should get edit" do
    get edit_teewt_url(@teewt)
    assert_response :success
  end

  test "should update teewt" do
    patch teewt_url(@teewt), params: { teewt: { conteudo: @teewt.conteudo, user_id: @teewt.user_id } }
    assert_redirected_to teewt_url(@teewt)
  end

  test "should destroy teewt" do
    assert_difference("Teewt.count", -1) do
      delete teewt_url(@teewt)
    end

    assert_redirected_to teewts_url
  end
end

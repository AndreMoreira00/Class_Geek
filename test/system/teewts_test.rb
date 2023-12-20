require "application_system_test_case"

class TeewtsTest < ApplicationSystemTestCase
  setup do
    @teewt = teewts(:one)
  end

  test "visiting the index" do
    visit teewts_url
    assert_selector "h1", text: "Teewts"
  end

  test "should create teewt" do
    visit teewts_url
    click_on "New teewt"

    fill_in "Conteudo", with: @teewt.conteudo
    fill_in "User", with: @teewt.user_id
    click_on "Create Teewt"

    assert_text "Teewt was successfully created"
    click_on "Back"
  end

  test "should update Teewt" do
    visit teewt_url(@teewt)
    click_on "Edit this teewt", match: :first

    fill_in "Conteudo", with: @teewt.conteudo
    fill_in "User", with: @teewt.user_id
    click_on "Update Teewt"

    assert_text "Teewt was successfully updated"
    click_on "Back"
  end

  test "should destroy Teewt" do
    visit teewt_url(@teewt)
    click_on "Destroy this teewt", match: :first

    assert_text "Teewt was successfully destroyed"
  end
end

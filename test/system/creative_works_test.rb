require "application_system_test_case"

class CreativeWorksTest < ApplicationSystemTestCase
  setup do
    @creative_work = creative_works(:one)
  end

  test "visiting the index" do
    visit creative_works_url
    assert_selector "h1", text: "Creative works"
  end

  test "should create creative work" do
    visit creative_works_url
    click_on "New creative work"

    fill_in "Artist", with: @creative_work.artist_id
    fill_in "Description", with: @creative_work.description
    fill_in "Name", with: @creative_work.name
    fill_in "Price", with: @creative_work.price
    click_on "Create Creative work"

    assert_text "Creative work was successfully created"
    click_on "Back"
  end

  test "should update Creative work" do
    visit creative_work_url(@creative_work)
    click_on "Edit this creative work", match: :first

    fill_in "Artist", with: @creative_work.artist_id
    fill_in "Description", with: @creative_work.description
    fill_in "Name", with: @creative_work.name
    fill_in "Price", with: @creative_work.price
    click_on "Update Creative work"

    assert_text "Creative work was successfully updated"
    click_on "Back"
  end

  test "should destroy Creative work" do
    visit creative_work_url(@creative_work)
    click_on "Destroy this creative work", match: :first

    assert_text "Creative work was successfully destroyed"
  end
end

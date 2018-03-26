require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting the form" do
    visit ask_url
    assert_selector "h1", text: "Stupid coaching"
  end

  test "Saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "Asking a question yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "How are you today?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end

  test "Saying I am going to work yields a positive response from the coach" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"

    assert_text "Great!"
  end
end

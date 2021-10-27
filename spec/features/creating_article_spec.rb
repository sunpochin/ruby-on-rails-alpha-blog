require "rails_helper"


RSpec.feature "Creating Articles" do
  scenario "Sign up a user" do
    visit "/"

    click_link "Sign up"
    fill_in "Username", with: "pachinko"
    fill_in "Email", with: "pachinko@example.com"
    fill_in "Password", with: "1234"

    click_button "Sign up"
    expect(page).to have_content("Articles listing")
    expect(page.current_path).to eq(articles_path)
  end
end



# RSpec.feature "Creating Articles" do
#   scenario "A user creates a new article" do
#     visit "/"

#     click_link "New Article"

#     fill_in "Title", with: "Creating a blog"
#     fill_in "Body", with: "Lorem Ipsum 某些內容"

#     click_button "Create Article"

#     expect(page).to have_content("Article has been created")
#     expect(page.current_path).to eq(articles_path)
#   end
# end

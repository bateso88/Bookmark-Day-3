feature '#Delete' do
  scenario 'Can delete a bookmark from the list' do
    bookmark = Bookmark.create(url: 'www.test.com', title: 'Test')
    visit('/bookmarks')
    expect(page).to have_link('Test', href: 'www.test.com')

    visit('/bookmarks')
    first('.bookmark').click_button 'Delete'
    expect(page).not_to have_link('Test', href: 'www.test.com')
  end
end
feature 'adding a bookmark' do 
    scenario ' I would like to add new bookmarks' do 
        visit('/bookmarks/new')
        fill_in :url, with: 'www.hello.com'
        fill_in :title, with: 'Test Bookmark'
        click_button 'Submit'
        expect(page).to have_link('Test Bookmark', href: 'www.hello.com')
    end 
end 
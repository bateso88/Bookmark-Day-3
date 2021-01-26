feature 'adding a bookmark' do 
    scenario ' I would like to add new bookmarks' do 
        visit('/bookmarks/new')
        fill_in :url, with: 'www.hello.com'
        click_button 'Submit'
        expect(page).to have_content 'www.hello.com'
    end 
end 
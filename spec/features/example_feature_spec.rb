require 'spec_helper'

%(The application should satisfy the following user stories:

As a user
I want to view the details of a meetup
So that I can learn more about its purpose

Acceptance Criteria:

[ ] I should see the name of the meetup.
[ ] I should see a description of the meetup.
[ ] I should see where the meetup is located.

As a user
I want to view a list of all available meetups
So that I can get together with people with similar interests

Acceptance Criteria:

[ ] Meetups should be listed alphabetically.
[ ] Each meetup listed should link me to the show page for that meetup.

As a user
I want to create a meetup
So that I can gather a group of people to discuss a given topic

Acceptance Criteria:

[ ] I must be signed in.
[ ] I must supply a name.
[ ] I must supply a location.
[ ] I must supply a description.
[ ] I should be brought to the details page for the meetup after I create it.
[ ] I should see a message that lets me know that I have created a meetup successfully.

As a user
I want to join a meetup
So that I can talk to other members of the meetup

Acceptance Criteria:

[ ] I must be signed in.
[ ] From a meetups detail page, I should click a button to join the meetup.
[ ] I should see a message that tells let's me know when I have successfully joined a meetup.
)

feature "User views the index page" do
  scenario "user sees the correct title" do
    visit '/'

    expect(page).to have_content "Hello World"
  end

  scenario "user sees a list of meetups in alphabetical order " do
    visit '/'

    expect(page).to have_content "Corgi"
  end
end

feature "User sees meetup info on specific meetup page" do
  scenario "user sees the name, description, location of the meetup" do

    name = meetup.name
    description = meetup.description
    location = meetup.location

    visit "/#{name}"

    expect(page).to have_content(name)
    expect(page).to have_content(description)
    expect(page).to have_content(location)

  end

end

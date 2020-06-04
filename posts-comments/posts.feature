Feature: Posts feature

    A user should be able to add and delete Posts

    Scenario: Add a post
        Given I visit the app and login
        And there are N posts
        When I visit the Posts page
        And I type "This is my first post" in the textarea
        And click on the Submit button
        Then a new post should be added, ie total N+1 posts

    Scenario: Delete a post
        Given I visit the app and login
        And there are N posts
        When I visit the Posts page
        And click on the Delete button of a post
        Then a post should be deleted, ie total N-1 posts

    Scenario: Like a Post
        Given I visit the app and login
        When I click on Like button of a post
        Then the post should be liked i.e. add 1 to post likes 

    Scenario: Can't add an empty post
        Given I visit the app and login 
        When I type "" in the textarea 
        And click on the Submit button
        Then the post should not be added
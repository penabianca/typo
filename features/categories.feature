Feature: Create and Edit Categories
As a blog administrator
In order to organize blog articles
I want to be able to create new categories and assign articles to them

Background:
Given the blog is set up
And I am logged into the admin panel
When I follow "Categories"

Scenario: Link should not be broken
Then I should see "Categories"
And I should see "Permalink"
And I should see "General"

Scenario: It should be possible to create new categories
When I fill in "Name" with "AimeCategory1"
And I press "Save"
Then I should see "AimeCategory1"
And I should see "no articles"

Scenario: It should be possible edit existing categories
When I follow "General"
Then I fill in "Description" with "Aime1, Aime2, Aime3"
And I press "Save"
Then I should see "Aime3"

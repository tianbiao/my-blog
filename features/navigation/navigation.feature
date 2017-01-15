Feature: As a visitor,
  I want to see navigation for this blog.

  Scenario: visitor can see navigation in Home page.
    When I go to Home page
    Then I should see below menu items
      | Menu Item |
      | Home      |
      | My posts  |
      | About me  |

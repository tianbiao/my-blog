Feature: As a visitor,
  I want to see navigation for this blog

  Scenario: Visitor can see navigation in Home page.
    When I go to Home page
    Then I should see below menu items
      | Menu Item |
      | Home      |
      | My posts  |
      | About me  |

  Scenario: Visitor can navigate to My posts page via navigation
    When I go to Home page
    And I click My posts menu items
    Then I should be on My posts page

  @wip
  Scenario: Visitor can navigate to About me page via navigation
    When I go to Home page
    And I click About me menu items
    Then I should be on About me page

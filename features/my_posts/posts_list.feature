Feature:
  As a visitor,
  I want to see all posts for this blog

  @wip
  Scenario: Visitor can see post list when there are some posts in this blog
    Given the following posts exist
      | Title |
      | post1 |
      | post2 |
    When I go to My post page
    Then I should see a post list with the following posts
      | Title |
      | post1 |
      | post2 |

  @wip
  Scenario: Visitor can see a friendly message when there are no posts in this blog
    Given no posts exist
    When I go to My post page
    Then I should see a friendly message saying that there are no posts exist

  @wip
  Scenario: Visitor can see an error message when there are somethings wrong with Application backend
    Given error happened when retrieve all posts
    When I go to My post page
    Then I should see an error message saying that there are somethings wrong

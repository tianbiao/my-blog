SimpleNavigation::Configuration.run do |navigation|
  navigation.active_leaf_class = 'navigation-item'

  navigation.items do |primary|
    primary.dom_class = 'navigation'
    primary.item :desktop_navigation_home, 'Home', '/'
    primary.item :desktop_navigation_my_posts, 'My posts', '/'
    primary.item :desktop_navigation_about_me, 'About me', '/'
  end
end

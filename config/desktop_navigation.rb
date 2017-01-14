SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :desktop_navigation_home, 'Home', '/'
    primary.item :desktop_navigation_my_posts, 'My posts', '/'
    primary.item :desktop_navigation_about_me, 'About me', '/'
  end
end

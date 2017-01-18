SimpleNavigation::Configuration.run do |navigation|

  navigation.items do |primary|
    primary.dom_class = 'navigation'
    primary.item :desktop_navigation_home, 'Home', root_path,
                 html: {class: 'navigation-item'}
    primary.item :desktop_navigation_my_posts, 'My posts', articles_path,
                 html: {class: 'navigation-item'}
    primary.item :desktop_navigation_about_me, 'About me', '/',
                 html: {class: 'navigation-item'}
  end
end

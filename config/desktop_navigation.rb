SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :key_1, 'Home', '/'
    primary.item :key_2, 'Item1', '/'
    primary.item :key_3, 'Item2', '/'
    primary.item :key_4, 'Item3', '/'
  end
end

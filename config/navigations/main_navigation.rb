SimpleNavigation::Configuration.run do |navigation|
  navigation.autogenerate_item_ids = false
  navigation.selected_class = nil
  navigation.active_leaf_class = 'active'

  navigation.items do |primary|
    primary.dom_class = 'main nav'
    primary.item :all_albums, 'Albums', all_albums_path
    primary.item :all_movies, 'Movies', movies_path
  end
end

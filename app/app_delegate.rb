class AppDelegate 

  def on_load
    # force permissions for location manager
    Location.location_manager
  end

end

Before do
  @app = App.new
end

After do |scenario|
  if scenario.failed?
    page.save_screenshot("screenshots/#{scenario.name}#{Time.now}_fail.png") # Print em caso de erro!
  else
    page.save_screenshot("screenshots/#{scenario.name}#{Time.now}_success.png") # Print em caso de sucesso!
  end
end

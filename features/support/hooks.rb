Before do
  @app = App.new
end

After do |scenario|
  if scenario.failed? # blablablablablabla
    page.save_screenshot("screenshots/#{scenario.name}#{Time.now}_fail.png")
  end
end

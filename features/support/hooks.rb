Before do
  @home_page = HomePage.new
  @dash_page = DashPage.new
  @classroom_page = ClassroomPage.new
  @class_page = ClassPage.new

  page.current_window.resize_to(1440, 900)
end

After do
  temp_shot = page.save_screenshot("logs/temp_screenshot.png")

  Allure.add_attachment(
    name: "screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot),
  )
end

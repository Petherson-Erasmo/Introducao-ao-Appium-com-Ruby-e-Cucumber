Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 10

  @nav = Navegator.new
  @login = LoginScreen.new
  @toaster = Toaster.new
  @checkbox = Checkbox.new
  @radio = RadioButton.new
  @buttons = Buttons.new
  @avengers = Avengers.new

  # Evento de clique no botão Começar
  find_element(xpath:"//android.widget.Button[@text='COMEÇAR']").click
end

After do |scenario|
  binary_shot = driver.screenshot_as(:base64)

  temp_shot = "logs/temp_shot.png"

  File.open(temp_shot, "wb") do |f|
    f.write(Base64.decode64(binary_shot).force_encoding("UTF-8"))
  end

  Allure.add_attachment(
    name: "screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot),
  )
  driver.quit_driver
end

After do |scenario|
    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
    nome_cenario = scenario.name.gsub(' ','_').downcase!
    screenshot = "report/screenshots/#{nome_cenario}.png"
    puts "Screenshot URL: #{current_url}"
    puts "Para visualizar o print acesse a pasta de screenshots, buscando pela imagem : \n #{screenshot}"
    page.save_screenshot(screenshot)
end
Then (/^I see response code (\d+)$/) do |response_code|
  expect(@stock.code).to eq response_code
  #p '---the @stock.code is : ' + @stock.code.to_s
end

When (/^I use (GET|POST|PUT|PATCH|DELETE|HEAD|OPTIONS) for (.*)$/) do |method, url|
  @stock = case method
  when 'GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'HEAD', 'OPTIONS'
    get_response(method, url)
  else
    p '-- Wrong method is used --'
  end
end

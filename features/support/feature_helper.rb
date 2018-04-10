module FeatureHelper

  def get_response(method, url)
    begin
      if method == 'GET'
        #@response =
        RestClient.get "#{@api_url}" + url
        # p 'The GET returned: ' + @response
      elsif method == 'POST'
        RestClient.post "#{@api_url}" + url, {email:'first_name.last_name@gmail.com',firstName:'first_name',lastName:'last_name'}.to_json, {content_type: :json, accept: :json}
      elsif method == 'PUT'
        RestClient.put "#{@api_url}" + url, {email:'jonny.worker@gmail.com', firstName: 'Jonny',lastName: 'Worker'}.to_json, {content_type: :json, accept: :json}
      elsif method == 'PATCH'
        RestClient.patch "#{@api_url}" + url, {email:'elom.musk@gmail.com'}.to_json, {content_type: :json, accept: :json}
      elsif  method == 'DELETE'
        RestClient.delete "#{@api_url}" + url
      elsif  method == 'HEAD'
        RestClient.head "#{@api_url}" + url
      elsif  method == 'OPTIONS'
        RestClient.options "#{@api_url}" + url
        end

    rescue RestClient::ExceptionWithResponse => e
      e.response
    end
end

end

World(FeatureHelper)

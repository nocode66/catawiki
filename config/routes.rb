Rails.application.routes.draw do
constraints subdomain: 'api' do
  scope module: 'api' do
    namespace :v1 do

      #add resources here

    end
  end
end
end

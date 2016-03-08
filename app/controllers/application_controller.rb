class ApplicationController < ActionController::API
    include ActionController::HttpAuthentication::Basic
    include ActionController::Serialization
end

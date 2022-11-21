class ApiKeysController < ApplicationController
  include ApiKeyAuthenticatable 
 
  # # Require token authentication for index                             
  prepend_before_action :authenticate_with_api_key!, only: [:index] 
 
  # # Optional token authentication for logout                           
  prepend_before_action :authenticate_with_api_key, only: [:destroy] 
  
  def index
  end
 
  def create
  end
 
  def destroy
  end
end
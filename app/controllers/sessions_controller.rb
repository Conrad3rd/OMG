class SessionsController < Devise::SessionsController
  private

  def after_sign_in_path_for(resource_or_scope)
    '/granny_offers'
  end
end

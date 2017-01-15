class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def portal ; end

  def resume
    send_file 'public/BenjaminBehar.pdf',
      type: 'pdf',
      disposition: 'attachment'
  end

  def client
    send_file 'public/farming-valley.zip',
      disposition: 'attachment'
  end
end

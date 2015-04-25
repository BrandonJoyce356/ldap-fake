class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    render plain: ldap_fixture
  end

  private

  def ldap_fixture
    return @ldap_fixture if @ldap_fixture
    @ldap_fixture = File.read('config/ldap_fixtures.ldif')
  end
end

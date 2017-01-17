module ApplicationHelper
  def is_homePage?
    request.path == '/'
  end
end

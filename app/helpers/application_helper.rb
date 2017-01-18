module ApplicationHelper
  def is_homePage?
    request.path == '/' || request.path == welcome_index_path
  end
end

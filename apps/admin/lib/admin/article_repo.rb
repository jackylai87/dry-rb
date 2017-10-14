require "blog/repository"
require "admin/entities"

module Admin
  class ArticleRepo < Blog::Repository[:articles]
  	relations :authors

  	commands :create

  	struct_namespace Admin::Entities

  	def by_pk(id)
  		articles.by_pk(id).one
  	end

  	def listing
  		articles.combine(:author).order_by_created_at
  	end
  end
end

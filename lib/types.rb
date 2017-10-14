require "dry-struct"
require "dry-types"

module Types
  include Dry::Types.module

  ArticleStatus = Strict::String.default("draft").enum("draft", "published")
end

# constant to be available everywhere within app
# Usage
	# require 'types'
	# Types::ArticleStatus.values

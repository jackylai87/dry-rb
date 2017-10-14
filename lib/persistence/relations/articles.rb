module Persistence
  module Relations
    class Articles < ROM::Relation[:sql]
      schema :articles, infer: true do
      	associations do
      		belongs_to :author
      	end
      end

      def order_by_created_at
      	# order(self[:created_at].desc)

      	order { created_at.desc }
      end
    end
  end
end

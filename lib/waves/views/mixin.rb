module Waves

  module Views

    module Mixin

      attr_reader :request

      include Waves::ResponseMixin

      def initialize( request )
        @request = request
        super()
      end

    end

    class Base ; include Mixin ; end

  end


end

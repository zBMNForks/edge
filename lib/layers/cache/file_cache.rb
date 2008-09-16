module Waves
  module Layers
    module Cache

      module FileCache
        
        def self.included(app)
          require 'layers/cache/file_cache/ipi'

          def app.cache ; @cache ||= Waves::Layers::Cache::FileCache::IPI.new( Waves.config.cache ) ; end
          
        end
      end

    end
  end
end

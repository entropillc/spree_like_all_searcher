require 'spree_core'

module SpreeLikeAllSearcher
  class Engine < Rails::Engine
    engine_name 'spree_like_all_searcher'

    initializer "spree.search.preferences", :after => "spree.environment" do |app|
      Spree::Config.searcher_class = SpreeLikeAllSearcher::Base
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end
    
    config.to_prepare &method(:activate).to_proc
    config.autoload_paths += %W(#{config.root}/lib)
  end
end
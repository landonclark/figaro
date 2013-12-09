module Figaro
  module Wfh
    class Application < Figaro::Application
      private

      def default_path
        'config/application.yml'
      end

      def default_environment
        puts "whats my environment #{ENV['WF_DEPLOYMENT']}"
        ENV['WF_DEPLOYMENT'] || 'development'
        'test'
      end
    end
  end
end

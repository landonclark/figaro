module Figaro
  module Wfh
    class Application < Figaro::Application
      private

      def default_path
        'config/application.yml'
      end

      def default_environment
        ::ENV['WF_DEPLOYMENT'] || 'development'
      end
    end
  end
end

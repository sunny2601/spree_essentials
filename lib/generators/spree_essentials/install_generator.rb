module SpreeEssentials
  module Generators
    class InstallGenerator < Rails::Generators::Base
      
      class_option :auto_run_migrations, :type => :boolean, :default => false
      
      def add_stylesheets
        inject_into_file 'vendor/assets/stylesheets/spree/backend/all.css', " *= require spree/backend/spree_essentials\n", :before => /\*\//, :verbose => true
      end
      
      def add_javascripts
        append_file 'vendor/assets/javascripts/spree/backend/all.js', "\n//= require spree/backend/spree_essentials\n"
      end

    end
  end
end
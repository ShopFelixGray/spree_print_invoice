module SpreePrintInvoice
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def add_javascripts
        append_file "vendor/assets/javascripts/spree/backend/all.js", "//= require spree/backend/spree_print_invoice\n"
      end

      def add_migrations
        run 'bundle exec rake railties:install:migrations FROM=spree_print_invoice'
      end

      def run_migrations
        run_migrations = ['', 'y', 'Y'].include?(ask 'Would you like to run the migrations now? [Y/n]')
        if run_migrations
          run 'bundle exec rake db:migrate'
        else
          puts "Skiping rake db:migrate, don't forget to run it!"
        end
      end
    end
  end
end

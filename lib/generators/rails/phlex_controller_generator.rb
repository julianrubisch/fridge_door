require "rails/generators/rails/scaffold_controller/scaffold_controller_generator"

module Rails
  module Generators
    class PhlexControllerGenerator < ScaffoldControllerGenerator
      source_root File.expand_path("templates", __dir__)

      def create_view_files
        template "index.rb", File.join("app/views", view_files_path, "index.rb")
        template "show.rb", File.join("app/views", view_files_path, "show.rb")
        template "new.rb", File.join("app/views", view_files_path, "new.rb")
        template "edit.rb", File.join("app/views", view_files_path, "edit.rb")
      end

      def remove_erb_files
        remove_file File.join("app/views", view_files_path, "index.html.erb")
        remove_file File.join("app/views", view_files_path, "show.html.erb")
        remove_file File.join("app/views", view_files_path, "new.html.erb")
        remove_file File.join("app/views", view_files_path, "edit.html.erb")
      end

      private

      def view_files_path
        !namespaced? ? plural_name : (namespace_dirs + [ plural_name ])
      end
    end
  end
end

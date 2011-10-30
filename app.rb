# Use the app.rb file to load Ruby code, modify or extend the models, or
# do whatever else you fancy when the theme is loaded.

module Nesta
  class App
    # Uncomment the Rack::Static line below if your theme has assets
    # (i.e images or JavaScript).
    #
    # Put your assets in themes/<%= @name %>/public/<%= @name %>.
    #
    # use Rack::Static, :urls => ["/<%= @name %>"], :root => "themes/<%= @name %>/public"

    helpers do
      def articles
        Nesta::Page.find_articles
      end
    end

    # Add new routes here.
  end

  class FileModel
    def template_with_subdir
      "templates/#{template_without_subdir}".to_sym
    end
    alias_method :template_without_subdir, :template
    alias_method :template, :template_with_subdir

    def layout_with_subdir
      "layouts/#{layout_without_subdir}".to_sym
    end
    alias_method :layout_without_subdir, :layout
    alias_method :layout, :layout_with_subdir
  end
end

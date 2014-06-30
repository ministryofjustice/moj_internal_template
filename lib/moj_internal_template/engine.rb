module MojInternalTemplate
  class Engine < ::Rails::Engine
    initializer "moj_internal_template.assets.precompile" do |app|
      app.config.assets.paths << Engine.root.join("app", "assets", "fonts")
      app.config.assets.precompile += %w(
        moj-internal*.css
        moj.js
      )
    end
  end
end

module MojInternalTemplate
  class Engine < ::Rails::Engine
    initializer "moj_internal_template.assets.precompile" do |app|
      app.config.assets.paths << Engine.root.join("app", "assets", "fonts")
      app.config.assets.precompile += [
        /moj-internal.*\.css$/,
        /moj\.js$/,
        /\.(?:svg|eot|woff|ttf)$/
      ]
    end
  end
end

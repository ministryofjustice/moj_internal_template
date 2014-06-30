# Ministry of Justice internal template

A basic template built on GOV.UK templates and elements for use in internal
Ministry of Justice services.

## Limitations

Only Rails is supported at present, but it should be possible to use the tools
in `moj_template` to extend this to build other formats for Django etc.

## Usage (Rails)

Add to `Gemfile`:

```ruby
gem 'govuk_template'
gem 'govuk_frontend_toolkit'
gem 'moj_internal_template',
  git: 'https://github.com/ministryofjustice/moj_internal_template.git'
```

In your application template, do something like this:

```erb
<% content_for :head do %>
  <-- Define your own additional styles -->
  <%= stylesheet_link_tag "application" %>
<% end %>
<% content_for :content do %>
  <div id="wrapper" class="">
    <main id="content" role="main" class="">
      <div class="inner-block">
        <%= yield %>
      </div>
    </main>
  </div>
<% end %>
<%= render template: "layouts/moj_internal_template" %>
```

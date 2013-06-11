# jquery-rails-google-cdn gem
=============
I have to give credit to the authors of the gems I combined and modified to make this a reality:
[jquery-rails](https://github.com/styx/jquery-ui-rails-cdn) and [jquery-ui-rails-cdn](https://github.com/styx/jquery-ui-rails-cdn).  This gem will replace [jquery-rails](https://github.com/rails/jquery-rails) and serve your jquery files from the google cdn, if possible, than fall back to your local copies if neccessary.

Serving jQuery from a publicly available [CDN](http://en.wikipedia.org/wiki/Content_Delivery_Network) has clear benefits:

* **Speed**: Users will be able to download jQuery from the closest physical location.
* **Caching**: CDN is used so widely that potentially your users may not need to download jQuery at all.
* **Parallelism**: Browsers have a limitation on how many connections can be made to a single host. Using a CDN for jQuery offloads a big one.

=============

### Features

This gem offers the following features:

* Supports Google CDN
* jQuery version is set in your application.rb file
* Automatically fallback to local jquery min files stored in your vendor directory:
  * You're on a development environment, so that you can work offline.
  * The CDN is down or unreachable.

On top of that, if you're using asset pipeline, you may have noticed that the major chunks of the code in combined `application.js` is jQuery. Implications of externalizing jQuery from `application.js` are:

* Updating your JS code won't evict the entire cache in browsers.
  * Cached jQuery in the client browsers will survive deployments.
  * Your code changes more often than jQuery upgrades, right?
* `rake assets:precompile` will run faster and use less memory.

=============

### Installation

If you're using the asset pipeline with Rails 3.1+,

- Start by removing `//= require jquery` from `application.js`.

If you're using the asset pipeline with Rails 4+,

1. Create the jQuery vendor directory:  `mkdir vendor/assets/javascripts/jquery`
2. Download the version of jquery you want to use from the [google cdn](https://developers.google.com/speed/libraries/devguide#jquery) and save the file to this directory. The file should look something like `jquery.min.js`.
3. Add this line to your application's Gemfile: `gem 'jquery-rails-google-cdn'`
4. Add these lines to your application.rb file to set the version of jQuery you are using and to make sure the asset pipeline makes it available:
```
config.assets.precompile += ["jquery.min.js"]
config.jquery_version = "2.0.2"
```
5. Finally add this section to your layouts file.
```ruby
 <%= javascript_include_tag :google_jquery %>
 <%= javascript_include_tag "application" %>
```

It will generate the following on production:

```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
window.jQuery || document.write(unescape('%3Cscript src="/assets/jquery-3aaa3fa0b0207a1abcd30555987cd4cc.js" type="text/javascript">%3C/script>'))
//]]>
</script>
```

It will generate the following on development:

```html
<script src="/assets/jquery.js?body=1" type="text/javascript"></script>
```

If you want to check the production URL, you can pass `:force => true` as an option.

```ruby
jquery_include_tag :google, :force => true
```

=============

###Changelog

* v0.0.1: Initial release


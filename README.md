# Jekyll Thumb

This Jekyll plugin automatically generates image thumnails using the [vips](https://jcupitt.github.io/libvips) library and the accompanying ruby wrapper, [ruby-vips.](https://github.com/jcupitt/ruby-vips)

libvips is like imagemagick but less bloated.

The plugin adds a `thumb` Liquid tag that can be used like this:

```html
{% thumb src="/image.png" width="100" %}
```

This will generate the right images and output something like:

```html
<a href="/image.png" target="_blank" class="thumb"><img src="/image-100w.png" width="100" height="50"></a>
```

## Installation

Add this line to your Gemfile:

```ruby
gem 'jekyll-thumb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-thumb
    
Finally install vips using your operating system's package manager, eg.

    $ brew install vips

<!-- Then add the gem to your Jekyll `_config.yml`:

```yml
gems:
  - jekyll-thumb
``` -->

## Usage

Use it like this in any Liquid template:

```html
{% thumb src="/image.png" width="100" %}
```

You must specify either a `width` or a `height`, but not both. Whichever dimension you specify, the other will be scaled to a matching ratio.

To use variables for the image or the dimensions, simply leave out the quotes:

```html
{% thumb src=page.cover_image height=page.cover_image_height %}
```

## Optipng

If you have `optipng` installed and in your PATH, you can tell the plugin to run it on all generated png images.

Just add:

```
thumb:
  optipng: true
```

To your \_config.yml

Currently the plugin doesn't optimize other image formats, except for stripping color palettes.

## Caching images

Optimizing and resizing can take a while for some images. You can specify a cache folder in your Jekyll config to let jekyll-thumb cache images between runs.

```
thumb:
  cache: "/tmp/images"
```

## Contributing

Make an issue, send a pull request, you know the drill.

## Acknowledgements

Project structure shamelessly stolen from [netlify/jekyll-srcset](https://github.com/netlify/jekyll-srcset)

## Copyright

Copyright (c) 2018 Jonathan Davies. See [LICENSE](LICENSE) for details.

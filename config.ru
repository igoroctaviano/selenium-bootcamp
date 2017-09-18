# File server configuration
#
# Rack must be told which files it should server as static assets.
#
# This template assume that you place images, javascript and css files in the images,
# css, and js directories, respectively, and use relative references to them in your HTML.
use Rack::Static, 
  :urls => ["/images", "/js", "/css"], 
  :root => "public"

run lambda { |env| 
  [
    200, 
    { 'Content-Type' => 'text/html', 'Cache-Control' => 'public, max-age=86400' },
    File.open('public/index.html', File::RDONLY)
  ] 
}
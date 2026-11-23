cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4694"
  sha256 arm:   "f5564dbeb132986ef1a6af76060fcdcf685ccad2d4aa7cf7c54daa436ad8042f",
         intel: "ea8599cf0fe81ddd12a423f7102df19f44b73e7a48742340acc9c79702f35437"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

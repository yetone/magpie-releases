cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4997"
  sha256 arm:   "779268d46e68d4e72d59d224fe1e7d9d0544999c8124dc3670966b2045f8b3c4",
         intel: "857840506a5b07e5671094a952ae1e78c320209587028853841c8deb7bdf440a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

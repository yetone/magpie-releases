cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4483"
  sha256 arm:   "db1155aa67cfabd9a9dcb501dd08eeb607c0fd64eeeff57eedf538f29c20f133",
         intel: "6ff08a57fa8304cee97a4e7b591a9ca0ffba5c07bc3c0bc24432d36c60a38d86"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

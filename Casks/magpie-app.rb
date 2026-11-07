cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3217"
  sha256 arm:   "16199a3d69f96b122ceefa84bb121d3a0c61d406db0ff51854e221bfb19011f4",
         intel: "471abfef4a5cf635022551ff35aee767ae1e342f45386e35bfc9ee80b9721e6b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

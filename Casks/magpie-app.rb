cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5047"
  sha256 arm:   "9c2c9ed4ea7671332719164478904b6d059cc2e3040d660fcfac4b4ca53d53c5",
         intel: "c49dce3772636625ee8c924d5e66823dc5818aace00e948892f9bd73dfbb27ab"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

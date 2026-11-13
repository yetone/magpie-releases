cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3991"
  sha256 arm:   "4ae14e5eb831b1a626853650bcb5bd69f70180cd65787d4d2bab065918908b12",
         intel: "588e7e6afcc2c3306bfc902da7780ff866b126285655468cdc941b7083270c50"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

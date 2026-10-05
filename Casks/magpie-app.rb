cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1044"
  sha256 arm:   "2ed8caebe0e4fc604972ab67092fbfeadac8ba5c270ea873b0ab0868fc37dc36",
         intel: "edcc6a60763cd9f7923c42c672959df993a88fe98e49fa8b0ee9f55c07efefff"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

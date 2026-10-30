cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2265"
  sha256 arm:   "3a7120ce1ad041662f5350818571d4761106905a7e14f54a6c2321aad5733dda",
         intel: "18464594c6ca39977fe9846abf220005457fdbe4d75b67477ffe8f63034c7ca2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

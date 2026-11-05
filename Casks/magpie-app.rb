cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3066"
  sha256 arm:   "bebed69974094e8d6089255526242ef673c257c2899fe45c6b2225e7dde9367e",
         intel: "43e6b1ef719fa1a7356c42ea07d8baf2a9ed35b7e43b52f6c429e7a67ffb181a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

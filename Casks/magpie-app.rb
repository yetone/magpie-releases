cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2772"
  sha256 arm:   "7b3a253bae58e2c28c9c8591f39b16b7cfa9fcbd38649ed1ac29a0c2d6b698c7",
         intel: "2e64162e1b2bb8662879ac7393a6ca2f468c2ba37a586c8cef6d46e50db3ce91"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

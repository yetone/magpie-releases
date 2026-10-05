cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1058"
  sha256 arm:   "e0a61e8f79b13b0a5dfc599035ff28c2dd59fa52067f4ca7b1a4c012ea9de5ad",
         intel: "cf7eebf2bd111056f8c76fc68365750cc502e29f0e0c8cd74e413a5e52123f94"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

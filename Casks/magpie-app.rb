cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2946"
  sha256 arm:   "5aa25eac9417a11d3f0f63934bf0d77919690bff28ed905dfb719cc05cdd4edb",
         intel: "7d00c8eefb45ab72fddf96e58df27fc1372803f0aefc325db4ce59e6526b0dbc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

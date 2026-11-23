cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4706"
  sha256 arm:   "9d80b22cb8429f47feea3361d9c5c0e357054be831e71684c12d33a8294cb0fe",
         intel: "89cd84e521710b573f4d076cdcc6b176ecc25bd88069c8b6613156d3c59dcfdc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

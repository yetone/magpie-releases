cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3344"
  sha256 arm:   "aef07b484a82cc145ef8d362382e069a960bf6d5201bace5529827de88b83376",
         intel: "10b5619b78d4ebc91e17dfce9f9ec03b24e983b291386d0de95a373500f4c4ba"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

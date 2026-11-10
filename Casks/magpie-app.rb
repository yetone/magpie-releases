cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3510"
  sha256 arm:   "0d40305877cff80e882728681095a7e20c006ab5e646ab94ffbf5522acfa29f6",
         intel: "68f7cf42b9bfd5493ab584c14954816dbca650f2404671cd5d976a7795615fea"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

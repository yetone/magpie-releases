cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3794"
  sha256 arm:   "d0e302985b1870db5337719d2113970b8fca2dd161a0f759e7258d6c70dec539",
         intel: "7f0aaaf6e848d164c8f0499e287df89dcac544d79fd49a9b05ded0a49920fc07"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

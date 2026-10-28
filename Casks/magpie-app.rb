cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1850"
  sha256 arm:   "93103e665c719c6822b1c2d535b6f5ff253d4a6eaf99f60a90404940db991c37",
         intel: "a6a0e05d5e9acd7d4019d7119b2935f1de2f706308d7cbe9dc89df20ac28be11"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

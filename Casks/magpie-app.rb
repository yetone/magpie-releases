cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5008"
  sha256 arm:   "e6104f51e12930353f2e9ed0529ddca7ef0aa00424031b0d79884ad267ef16bf",
         intel: "11eaf7981b78b325421bad7ec6f5a2398eda1bae3fcf082599044e82b726d74d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

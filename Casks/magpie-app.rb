cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4240"
  sha256 arm:   "29373a0c111966f65b60891eb3b5ede5698c59f885ce91041ca20302f922418a",
         intel: "7782d5d6e9042b064bc82f5e6e028372dac20369fd3f5e84128f626de0941128"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

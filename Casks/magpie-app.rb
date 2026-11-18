cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4481"
  sha256 arm:   "07decfb260e351dafe3ae567c72f7c3a968ad40a46e220da1b4737916605e079",
         intel: "38146e486592cfc2a3e4cedef56a26cdd15318655a7351c05726f1a6da9ec7d7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

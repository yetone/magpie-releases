cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2705"
  sha256 arm:   "b0aeda1f093081d570afde2735a56156bea9cf9a8384399a2873bac93b97812e",
         intel: "9e82b1f88227dccc3291054cb1dc3a36c060ae5bcc4d1a38c575db68751f1bbd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

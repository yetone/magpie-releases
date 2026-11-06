cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3131"
  sha256 arm:   "e967023af36ef10f792c651251096c4e3eaae2ca3b8f86f331bed8a32008f822",
         intel: "3e7daac3028712797b41f3e082615435552646b75d72fe6deeb707a49eef07cd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

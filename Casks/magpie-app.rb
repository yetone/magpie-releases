cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4295"
  sha256 arm:   "6cf37c8a956bfe1982334539d173a144574cb3d7e70ede2f3e92ee2046236b7f",
         intel: "3cd46f3466c383ab1d76647282ba27224131d0dce5556777e8631be8b07812cd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

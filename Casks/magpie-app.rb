cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4971"
  sha256 arm:   "82a88d35dee5d634c90b9e05ab219c6805560eb3b73088d8b8e6cf7f95aa7fb5",
         intel: "c0b93572e3f17e0fb1aa0cbbdfb28af52d5f5da1112a892f7c05653f989f9cf1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

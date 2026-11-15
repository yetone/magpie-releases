cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4279"
  sha256 arm:   "3e06abdb07b879b30ad270f7a06da571bc76fbd97d5f4cb6bf8db123418f62db",
         intel: "19d2a31f4e56436d8c502b3e9311b08a6c19e0283e72f6cafae935a578d0057d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

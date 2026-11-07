cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3262"
  sha256 arm:   "74f1dafa749a93934bc8c8f1fe9767d4e26703dcc7768778291dad6d3a5f25e5",
         intel: "b0d42aed040d0e563080d5d23eb5c9ca097cef652f089884f221312e6b6f1503"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

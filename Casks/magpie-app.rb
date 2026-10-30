cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2248"
  sha256 arm:   "2a27aa7b727a73eae09b9f0c2aec2d85b4d8ef031c948d3030a1c29ae3a4b324",
         intel: "abce29775b68480bf1fc6a3fda9c80c9f93ad3a101476a83cacfa2167cfe72bf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2655"
  sha256 arm:   "77bf14ffb4ef4950b9a65a2d71cbfe0011d8a5135ab61c3b78f278d87afab6db",
         intel: "0c24af1755a868d3f8c20e410524a28d8d85016db39ffb46d585893d54f75a09"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

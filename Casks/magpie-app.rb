cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4380"
  sha256 arm:   "f6ff08705bfb20c874123bcad2e2e47d93cfab2ae4255c5547ad54108d0d1965",
         intel: "296e4cb4b087ca419ee56a063d9eb9cfedc40eb29dd6c94c98b32da2cbd60b97"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3343"
  sha256 arm:   "5f69fead3b3facd9c2e884d8809c536bb3195860890327aeada477947ce4f526",
         intel: "baf35f569fd31a2b4e59b0a51bc5b8f5a802a2826df7e5652a8e751284edee5c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

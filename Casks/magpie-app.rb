cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1004"
  sha256 arm:   "ec644cc32bb469f497aedce6c56c1ce6d536194ca19b92fbbfee0e52dae568a2",
         intel: "e70b4bb250c5d5d5973c446c4606951ec67f03565ee47122a8494d4305b3dd7f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

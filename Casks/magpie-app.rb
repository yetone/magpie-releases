cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5014"
  sha256 arm:   "d3ee531b4f924cebca9c84d9514e60078ce364e756f979d5e50511fcb1b1c1c6",
         intel: "7fbf6b6e468dca0358974a620147c6e75786d8e3600bfc5a8807ddc3d3871a80"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4533"
  sha256 arm:   "d41d223f5393245e86c33d07e0e6054add1314c335c50da054cfbbd136a7019f",
         intel: "36197e90b160bf11fbc5e6784fd180d8142be8a71001c0a0541a509e8c72a8c9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

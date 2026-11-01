cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2633"
  sha256 arm:   "e52f09a499e3f85c8ba48791c94a213a21de9aa6366bde290d5d0988c91f1f9f",
         intel: "542e1daf19646de5cfb45b4be2cef097d93f1e0e1ac6af707430a83e726900f9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

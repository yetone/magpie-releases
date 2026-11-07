cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3246"
  sha256 arm:   "a5e06061be6510d4a236a25e2f39a476f6225581790723cb9c4851d9972d5865",
         intel: "60b6dd025c86236c2a113d2e8cc9e8e2d0ae8bda4eb10d213f1a445bb7900b85"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

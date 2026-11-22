cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4663"
  sha256 arm:   "18c543061e6c130f25fbc8f53c2e0050fabf0a89c2480ebbc5050733bb14938b",
         intel: "e62c2bd3d2a06e4f96a602c5e75df7b5db88a0965ee31cb12bda3db44141ea93"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

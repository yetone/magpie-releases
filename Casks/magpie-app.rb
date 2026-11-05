cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3068"
  sha256 arm:   "1c8f2816f13caf279f7ccdb5049d5eb795328412c07e68fe896143aa8cfb3f7d",
         intel: "3ae8aa2ddb474fa1cea839774e3d96119dd3d1f11273afa68af3ba3b82f2fdd1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

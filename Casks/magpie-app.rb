cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1033"
  sha256 arm:   "2e01e20f1e0e7c721053c0b43e7b13b18a23e74bad75e92d28bca44b173e7e16",
         intel: "ca410e712365a6de531c86884199936f79e83cec0862d483ebff6dc9f22d990f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

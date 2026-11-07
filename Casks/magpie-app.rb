cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3292"
  sha256 arm:   "eca11209062b2804d5c182c0710d87d89d30816a4128a006d60792e99a493cf5",
         intel: "12160a414a895ee78f114d2a74892b89eb3dba6f3b7ca5af9d136b9bfd746cd9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

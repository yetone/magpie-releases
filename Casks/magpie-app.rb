cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1158"
  sha256 arm:   "ea07cf66864767481701c243630536ac7c38a703db1c149dac6b210f803c58d8",
         intel: "25fcdb6cedbce0ef9f8630baaef7b202573dece785c42c198294a106c39e8d7d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

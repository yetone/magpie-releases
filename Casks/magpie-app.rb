cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3191"
  sha256 arm:   "0e15043816aeae0df399b9080666944d7ed88e9125c1043dd8532b7dd173c556",
         intel: "e07c23db97a7846d7ef5e44158373a97eb6f3ce5cebd7b18140e4d1d95b36102"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3674"
  sha256 arm:   "f50b9fe206e998c58d933a1aa3535f3e4e5f8dc1dab8e0ac1572b5c31948f45e",
         intel: "5b13ff95bbbf2e6d4e2cdb20de906479c88cc271ff4d17266071b079fe03259b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3941"
  sha256 arm:   "8fc387f8ccfb986155ad52e10971d9ce01b1fdc3022973d2c9552b049ca12d77",
         intel: "1f687573fd2af6d154a5a26cf4e0c0f5da5220330ab37486870540789aecbe27"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

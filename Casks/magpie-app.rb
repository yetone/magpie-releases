cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.968"
  sha256 arm:   "cde2c8bb2615e9d26362b218843683bae48731c6b41701cad47038b766917e1b",
         intel: "2f23e6c146e1238392f2249dda4e1b45c4167529fb94948b7d3c4468dae6ed5a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4945"
  sha256 arm:   "7cb8ffa40a287f7e7596784b770961b9f7200c37c0324fa35f7a728c3159381b",
         intel: "3086fd3f627198efd97fc24dbd50c75b2de1083d2594424ca6ae4c0fa89cc0d1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

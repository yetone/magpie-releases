cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2182"
  sha256 arm:   "b18b708fdfc07c943a1e0376eedc3db2fb52a185adb2202552e9d6324b830b67",
         intel: "4fbca1392f63fd518ba97d71cd35ac2dffd1d53245f95b33d38a994257720a1b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

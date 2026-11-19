cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4531"
  sha256 arm:   "2ea3ac7ec0cd6994b79e4666708ed3cd768f298a3c8eb6e7650beac432c3297e",
         intel: "f429de62906ec2e59ee2f3b2a53a5f490badc2c62416b25ae29a84874d73731b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

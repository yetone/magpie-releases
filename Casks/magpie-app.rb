cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3965"
  sha256 arm:   "b25d2ddf9a132685181f12922db91bdd234e4cf982ad410483d19c51a6e651aa",
         intel: "08a888c155c8e205933727154463f91fb0b2400dc7ddebc1792de1ec2093bfe7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

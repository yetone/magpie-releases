cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2142"
  sha256 arm:   "ebaf45c11c14b17c942063aa920372b5997019716adec983a39e1f24dd709209",
         intel: "5661e1cc4c68876e89bc9c2c84e7c6dc2521dcdffb8b594437c4890fdd647f25"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4637"
  sha256 arm:   "e1c4468965700e7ae74d995d17b9bf11a140891c0797438f551f750a24d804c2",
         intel: "bc16e490cdf9f007b49fb7fc0df31144d3d6f6b827d0aa234124d1b3e7fa19b5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

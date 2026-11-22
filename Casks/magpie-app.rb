cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4659"
  sha256 arm:   "474a651ef0013cafa93c1eb0039234e9bf046436243ca1bb8d3ea33307023de1",
         intel: "c0b86343c638705b68497ad710557bce5731b7c7cff130d2bd4622b6765ba646"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

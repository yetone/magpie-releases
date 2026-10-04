cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.913"
  sha256 arm:   "b4e39017f250ad298864024cbf9d16567f697940568b5e5d653136fa173c8757",
         intel: "7710a397b7558b90954ba807455b1a7a30275e9cb908d4e9d85d5b73cd2792fe"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

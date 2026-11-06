cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3195"
  sha256 arm:   "8d920db9e8d5bf4c1754eb6c6558f11ef9cb8b004c6d91019e782f0cc920839f",
         intel: "c7cc7bba12c3aa21ca2f69e23e4078d08a702dce4a7cc36ae463d111220bbf7a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

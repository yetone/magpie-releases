cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.930"
  sha256 arm:   "52caa93960ecbad9ff1e8e4fc3a0f1aabfce4b1b63875ea79c9df0f0d171b61f",
         intel: "c14b4a4786878a65b9b14468902d47fa7f037af39a8df1a3b5acd13ae676a70c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

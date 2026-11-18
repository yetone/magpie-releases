cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4494"
  sha256 arm:   "2cd5201d23efc084141a703f1d032d209b1f78b6b6b121d4a59c69a2854643d2",
         intel: "add98631175daf32192a8853bb495ae07a7e998a2c9f775c3745c111122eb14a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

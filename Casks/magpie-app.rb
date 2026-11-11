cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3754"
  sha256 arm:   "faf3dc84244ffb5c5e3372192d8832b08a4318b8faa48041deb95fe3c1b165d6",
         intel: "d707e241e88fc37b0ad05ae6222efacfc90bd8e10fc29b1c87445169fb93fb1b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

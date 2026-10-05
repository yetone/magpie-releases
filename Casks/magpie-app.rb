cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1050"
  sha256 arm:   "261afd2ca68dc676459718edb4abbc26e775457078cf32a3d0423ec7d60fe8d0",
         intel: "7ce7d9705e5c4fd8f6e394d15d6c6f01b4473adc993b8d6cebb8d9db00253e30"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

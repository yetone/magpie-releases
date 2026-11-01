cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2538"
  sha256 arm:   "6cd0cb2445ed1a943a400b039b10c01e73cebe6a0974bfdb0e01be4e1f4ae8d6",
         intel: "ba09c9b8ff3c9124d3cbc51f0c93e53be285373c8808d196719a503f71a22591"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

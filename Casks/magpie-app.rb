cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3163"
  sha256 arm:   "cf2f9831d1b3c863db504528e20e060c2d2bc2ce059544cbd1aec5c9bcfacbdd",
         intel: "92376e4d621e19a27b04801935f625852b8c852277980c6eee220addb6ba7868"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

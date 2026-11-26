cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4903"
  sha256 arm:   "5cda2820654a0ed39228de6556205bb92ad693196fc94cd5b2a94071783de413",
         intel: "dd8618b1993e35afd2f663c230c10e25ac40b44358298f5789e2c445a3d4e8ca"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

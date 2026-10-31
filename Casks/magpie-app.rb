cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2338"
  sha256 arm:   "d62af8e3b1154c3e73c4c2d9733bcf8cb22573bcbf5d1c557800a43adbec2dcd",
         intel: "480a51ed10ac5a27e59ff69368c8317f34130518bd5a8f2aebc3acae2a587805"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

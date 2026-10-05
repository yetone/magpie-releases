cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.960"
  sha256 arm:   "1a5335007952f1f3aa2c3ee7521fecc57e32bf0c2807f70e2b1aabf3cb7b3ba2",
         intel: "cc5ad6b9bd146f3ddf5efda13eacb29918135c949c3e4a18a1b37dc38ad8c8db"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

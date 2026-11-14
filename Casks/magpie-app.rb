cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4187"
  sha256 arm:   "197c0336e2b0218493532043baac15fb452f971a7d10a33c3d24fcdc68159a2d",
         intel: "aeb725af903e0e8e1d63177a6eebdba9485fbc732892b6ee5dfce62dee2db49e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2960"
  sha256 arm:   "09fbba18c9c2059696f275657556a562e8c86bab34e598f6b46c64137fe7d668",
         intel: "68bae6051d8d2bdb3f74a0d2f36618bfff970ae3d0050a1509238c609e439f5f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

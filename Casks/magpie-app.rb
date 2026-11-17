cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4401"
  sha256 arm:   "e675d7e8e0993a596a2791222faaa3dec697a677b398bcb5ecb99f05e36f8173",
         intel: "5060a08ac8eb04542371252ce03180c8a3347ad6345a76d780c3afc132bda97a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

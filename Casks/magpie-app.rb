cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4151"
  sha256 arm:   "ed51d0194e34f6554a18d747bc71e30286bbb65ad6e88e91e413d62538a6a903",
         intel: "07896ed93148b321dd79eec02dbeafcdd0e823275de5d9ad5aab6da1d4701cd7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

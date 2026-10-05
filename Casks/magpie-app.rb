cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1009"
  sha256 arm:   "6803dde473b61804e0f2326877f5b7ce76f51fa5088c1c377c327601ab6c398e",
         intel: "6bf39ecbb9d45860f1ed0f9782555dec2d56dbd5a72b0366a3c7943332294c57"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

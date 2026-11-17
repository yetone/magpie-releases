cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4397"
  sha256 arm:   "7e1209be1895d99b22caf2c7d88321af8345c2faba9959dd67b7303ec80837c2",
         intel: "37171daff30c3255b15fa64ef9a023665025d4b84ab5937d4996d80a45bc661c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

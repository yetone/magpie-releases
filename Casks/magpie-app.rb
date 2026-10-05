cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1064"
  sha256 arm:   "ebe430f1ba4df9620aa6f86242b2effe5bfae5dcb49e7908761b55185affaa18",
         intel: "ae003b10daeffcdbd409ce780dbbba625d373b7b65be69651f588c64abdbdb8c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

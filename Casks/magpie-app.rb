cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4959"
  sha256 arm:   "2543703911b450ccff3695ed3562cf11fc0f703bdd595dc15e4417062ef98a68",
         intel: "bf8fcf091671f5c1ccae67d0a72dcb3416d61c5d2dd74d9756fd0a645893cb05"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

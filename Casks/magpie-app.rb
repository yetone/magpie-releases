cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1067"
  sha256 arm:   "cd3c9fcc32713a60430817de0a158d99553423567f9ce7904c354204b2721716",
         intel: "93c336ad801e5450602846601b9b7241b0a76b30a10b84371a9f48aa69e59a91"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

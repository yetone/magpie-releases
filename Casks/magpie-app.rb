cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4604"
  sha256 arm:   "51f48519fbe4fc75a7c1f8e8ed450c704e5204cfdc25157deebd7c4cf2663022",
         intel: "3cece0c403a41053624729d2fc0c68f97cf987b4705b3ca654f136ed40179bf9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

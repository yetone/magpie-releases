cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2456"
  sha256 arm:   "69471d6706ee12bd10b275420ef10796b0d03ca8cce358c2c17f0ad4aeb59d86",
         intel: "11ba450137154b40b1570c8790847161163dc12a9a6a5835facbc5d379d5df5d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

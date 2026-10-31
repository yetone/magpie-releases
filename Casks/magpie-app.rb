cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2427"
  sha256 arm:   "4ffcead28166ee5162737c41701f895816013c9edff4b0828744f4a49d631f86",
         intel: "388f0b9ab65ab1df4b77843933f6604711d421bc88ec54bdab6ad965449b6e7f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

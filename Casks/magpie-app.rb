cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2259"
  sha256 arm:   "3630c677e1ed28d36a75d5b178f0c17515e98f5067ef0c1cb7b9c16e08095a4d",
         intel: "4d246048f29f019b4ae8db3b38b4d7371d29ffc83c846d45b4d2e209be02050a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

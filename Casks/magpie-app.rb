cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3791"
  sha256 arm:   "08a0551eeacf7bde255466680429322c235117624950a7449770017dc0d91ca8",
         intel: "8c5a4a759f4e990679679aa9bf0dab481daea12326cb2ff0082007c336150069"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

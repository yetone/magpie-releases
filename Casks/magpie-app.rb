cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4556"
  sha256 arm:   "fa08b5d3082e5830eabe17cb81075b81cca1e3a2f0b76507ab8ff37226b3f67f",
         intel: "da6b2de17ef2a8f92bb90b2d0905ee77b2c3485c74459ff455b9942a59e059a6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3611"
  sha256 arm:   "e62318f4f7b85c973204289e5bafc09d39830c960b701eba802f3e5d7736bf1f",
         intel: "af62625b86f923cf68f3286e909bd21a6a8e687de7e0c092b17c35f4aed913ea"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

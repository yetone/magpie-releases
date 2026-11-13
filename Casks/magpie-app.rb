cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3986"
  sha256 arm:   "750ceb4d0a6f29b7fe65a5162d9011a2f9f542e618da9c1f8fb61cab0694f0bb",
         intel: "3cb7f95941a7b4ca1230a57ce1e590263741810439800d17300559771b7f0729"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3624"
  sha256 arm:   "b34db6f3e2473ccef6f6e2a85163fb2ed9fae64cb091a510d4f6ed79f424e56c",
         intel: "eef84ef6198e2ec0d71a8a6e49d7548dc502f6e73bc3f6295d43a57d831ea0dc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

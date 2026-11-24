cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4762"
  sha256 arm:   "7b26591d64d979c108057272f9c994d526e91fe4e34956679adf148dda2aed61",
         intel: "31b9576f863d45b01eeafa2623ad2daef6121c05e80f590945aadc7ddfafe53e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

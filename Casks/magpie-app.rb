cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4241"
  sha256 arm:   "29cc7044c96e84f85507ae780d45c73a7d96f3dc09180432b54e2f8accc38c28",
         intel: "657d40bf85ccf6b5f936a7a4100bd822172d0c2b455eb363d0b220d9d8988c42"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

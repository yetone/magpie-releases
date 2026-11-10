cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3649"
  sha256 arm:   "52c89133b2f1c41d22a0ede565d88388eeadf250a825bbc26182f9125bcd7b33",
         intel: "a2d95e5cd1e8c594cd1cde292a434e4fc9696172aa26113aab054b80e165597f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

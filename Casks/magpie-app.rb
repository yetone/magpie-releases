cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4751"
  sha256 arm:   "56ddb32de99c0e268322765442799627249022986647e447d4772d612f95eba9",
         intel: "031ffdb496cf2ce0077e5524963c2af914502878a18a5928210fa09298c5ec27"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

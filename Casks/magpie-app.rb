cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4943"
  sha256 arm:   "70e6ea10abb441ab92502c83e6e015336bf6e8b3ab59e866141f57577db12a9f",
         intel: "b2f30a1738d8d519aa01e24143acc61b1edfa217f65c84956dc91e1b7bc8a6b9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

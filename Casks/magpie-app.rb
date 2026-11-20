cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4622"
  sha256 arm:   "4e63d96cbfa3968d6abe5d57648aa2886c3706e1d730d7ebba4e45059a6db728",
         intel: "79e461054b4ccc3005b8bf8e7a79188be92792bad3e16faee333db808203593e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

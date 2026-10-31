cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2482"
  sha256 arm:   "186bd6abf5ae6c0b092e8d17af5e248383d4682105f08db4c78e61b7cdf4a16a",
         intel: "d5455ec706e3abb6338b6a94d20596dee244a39bfa99d7f752140be499781585"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

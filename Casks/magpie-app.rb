cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4083"
  sha256 arm:   "6ea0ceee08b14ce8bfe3f97fcfb1e8e42bd4a2bbdfbb919e681d658806a0eb17",
         intel: "946a5b9882f6d7ab9b941a12d5453d3c2acd5c1320ef72adb10924bb09858846"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

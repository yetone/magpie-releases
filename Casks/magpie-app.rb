cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3247"
  sha256 arm:   "0ca1902416e7f30305f0e02c32766cd5b8193eeda0e09c756dba0467606865f9",
         intel: "0670800ad98621001b3fb1d85624d7fb0e996bf989ab0e4e4751d9c732ba08c4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2271"
  sha256 arm:   "788321dbffa715bce5d6bb33062038148d97df74324fadf7e32f4e72509a4b4f",
         intel: "7b4160b46df6cbdb8a2cba63485d39163e6f60cdeb93487f955c9ff5ed8ed99b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

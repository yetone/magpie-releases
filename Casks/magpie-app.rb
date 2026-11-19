cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4542"
  sha256 arm:   "05436287ad03ba91101f58247ac9eb23344dd0258a5419d5b053f807faa0725f",
         intel: "1cf0487cad92783ef4ca2fec7be6fbc706bc5109a1a8c9588b677ddf9a410eeb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

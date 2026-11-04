cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2966"
  sha256 arm:   "39899bb126a257c29fdd2ec3e3efa96fe6502709e0f3a26bffe5dcbe083d2a21",
         intel: "8597e25f712d50798d6f0d6730d27f8365ade354a673f676dabf97d6590a85dc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

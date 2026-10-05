cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.949"
  sha256 arm:   "557bb0774c9c038acf3d054998463552c24166aa4553cc4fe14524844b0c6653",
         intel: "ed1c6512fcbdb0a2923428d4f580741630a3a16fb2b5b2b5e911c18fcccc6064"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

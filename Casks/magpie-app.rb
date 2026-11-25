cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4796"
  sha256 arm:   "08d599f1a201d6bd92233811cd8b1e03b55b1b38c2eb934007569cbf9b892552",
         intel: "1b9699ecc8502992caa5d841bcb3aab9ad4f846ca509265cf3b0f31313cd06bd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

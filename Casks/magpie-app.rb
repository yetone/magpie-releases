cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4468"
  sha256 arm:   "d4b7360f078c4ca98fc95177a9fedb0fdae7ebce5059b5e00e236962c09184a3",
         intel: "b7380a6916a2083144d5b7712928e30d9b064d979767e677a91645cdc11cdb35"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

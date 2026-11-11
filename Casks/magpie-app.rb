cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3749"
  sha256 arm:   "45bed3dc88c6e9634b2b01f3c44ebd077e7472c4cfffaa18df70ac316817e018",
         intel: "dd495291a9def6ef4221cfc571dc00cdc43e16e297c842b498ed6e05fcb7dd4b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

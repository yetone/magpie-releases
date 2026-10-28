cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1841"
  sha256 arm:   "f68abb7cf312767c37e87bb701600ba7151f8d5abb6554cbea37c5d2a36bfe8f",
         intel: "30aeaf2a9b16ecd134e49a1eba95185583e2d9de6cb1d9e42ccdab09e4103c68"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

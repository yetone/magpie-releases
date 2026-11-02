cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2734"
  sha256 arm:   "34deca9fd6af3c3618108c9077da17d02d0f9bcdda26fc8a2177b80df9c62dab",
         intel: "0b1665eeb7f8c9cb7ee80e2d0e15d10f0df9c5acc0525e89d2f329106a221179"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

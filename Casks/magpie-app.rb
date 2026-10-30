cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2195"
  sha256 arm:   "a2a0e8278a868081bca23501f78e6d1407bbe3cb37bede0a8e59c5b3f9899c37",
         intel: "8fe146b9a6cd5b3bdab4f7c7739089e38ac92428a6503b97038e25f8db4f2177"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

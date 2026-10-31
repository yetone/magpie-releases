cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2316"
  sha256 arm:   "2cf44752f9776697f9f146a907e5bbaa526d72962a351b9397e287f984baa73b",
         intel: "ad9dc7e1d23ef33b67b476c3841f35aeae777a00973f92e0bfe72403a8c63b60"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

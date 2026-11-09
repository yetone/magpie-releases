cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3483"
  sha256 arm:   "d5d7ca145e9d4457bb004b480b8942a734d1a554cf7f63bf3ff922f8ebc33a21",
         intel: "7ff1a52731d6184bf6ffd5c69c1bdb7fb92122f36a0ef8844c69bb4b4e0666e2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

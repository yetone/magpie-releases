cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4405"
  sha256 arm:   "f20f5217fbb14164814f8abbe8559c9f2eac993761ffce54771885b5a01cef88",
         intel: "7f35879b6100c1db36cce78df430b16cca43d0b128d49e714fadbc122073e728"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

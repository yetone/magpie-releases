cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2491"
  sha256 arm:   "0e9ffc926802536c4dc534059e47f9f82e86281c6dadf1fef531ecd32d76d23e",
         intel: "f0e6a33731e906e9840fd4d2041468b9eb84104a349ad5da98b846f2f7b2407a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2043"
  sha256 arm:   "6d57f715814725312fe6a6df703aca77b58334c99ea866442e60c77795eb1e64",
         intel: "f0671eb71c22e77dd4bee1fc3e315f7e274d461d14643a1a20e891479f453eed"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

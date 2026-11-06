cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3192"
  sha256 arm:   "a54f6c1639e1b832c17f02909fed424402e89f727a0a6a4755f4b48d9e6293a9",
         intel: "66c2f351f51bd15dda678e7db31bd370ea83f8c0528660c30cb41f369023efc3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

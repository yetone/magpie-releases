cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2948"
  sha256 arm:   "4b64ae12f05c86f547434051220b2a1347f944d99cdc35055a9b9f131e081b8b",
         intel: "dcfe6730dbb2d62d0307eedbafc216d7cb37896998c812ed073abe75cb3445d5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

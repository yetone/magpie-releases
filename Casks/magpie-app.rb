cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1059"
  sha256 arm:   "a4679a2e837cf658a31a212c3d3ffc7f66e21d48390ce3a3569fd2af7d2bfee7",
         intel: "1c7a4c8224a6a78012b4027a4a33d827902b2456c197fdc850857d20a92b458d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

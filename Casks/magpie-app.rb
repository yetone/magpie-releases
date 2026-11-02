cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2671"
  sha256 arm:   "2b4508a8aedb8aa2bc2b26c36fe924a4774045263885aeea76eb70c1b82df69b",
         intel: "d808b3e0ec801d6dab245b58f00d8802fafc91eb9a51b77e083f16ceec5c2622"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

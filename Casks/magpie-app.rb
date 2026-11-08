cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3335"
  sha256 arm:   "c2994a65340def6af8ca54485ab612b4949bd637ec9137bd6f4dfb4526873f03",
         intel: "89d980b66a0fa992660225c2bd6f3bc7d8f880d98b8d889248b7bd8f63f99f0e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

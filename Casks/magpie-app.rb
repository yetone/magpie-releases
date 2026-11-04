cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2982"
  sha256 arm:   "f7c619b6628fc0003995c7d7c61a91bae6dc3f37e28c36c26dd03257b884beba",
         intel: "2c1e015e208c6c97935afe8512626221b734aa99e44a32deb37a8023e152ab60"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

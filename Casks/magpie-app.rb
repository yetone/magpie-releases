cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4821"
  sha256 arm:   "51409daaae5ef5644b260693127660c06fe80c60c1218e92dabb3023a53b7f41",
         intel: "867dcd1cb3765726af7638f49086813ed6b6bb38b16892b9193d1b5f1200993a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

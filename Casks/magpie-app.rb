cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3665"
  sha256 arm:   "f916299137262e33d7682e071e02adcc1dece236774cd6d2303fe93f04ccc71f",
         intel: "374ead57a86ca983f811f764c0db2f082b7ad5f7c17dc7b1a8101b75853852c4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

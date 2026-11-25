cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4798"
  sha256 arm:   "ec69c91147cf7ebc2901b54637164c157afa27f5d0ea614bc20847b4fbd98d75",
         intel: "75163e9be00a3826dec3d688b9fa7506186f934e01d77ce03caf56e5a958fdf1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

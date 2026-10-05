cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1029"
  sha256 arm:   "10985740ada37d4690142cf261353103846c316fd534bcaae5cf7ee7f038c9d9",
         intel: "34575344096516e52862d77a4429828b18eec65bfddf554e9952ec10d6325ee1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

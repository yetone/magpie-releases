cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4538"
  sha256 arm:   "9fe6aab5dd1b108ae0db333640294e1f1908f683ba9cfdf1b2937174c51b060c",
         intel: "ef8a9f172ed21213f32ce49697801055f6d6ccd33818f0037e44f5d8757be670"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

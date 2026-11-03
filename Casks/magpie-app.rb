cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2862"
  sha256 arm:   "3fe617433b0f8d702a61cdd48a3cfcb0b14cb6721543ac14961eb751b1b51815",
         intel: "c9b3b5a301bee1ed1b1d22ed05d6a5f59915558ae3f6878ea4dcfdde0e0c5aa7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

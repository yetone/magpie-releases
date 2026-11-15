cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4244"
  sha256 arm:   "0f6f4bdb0cc8f9d5e31d04db5b9033b59549c9835161c5807389247f02ad5445",
         intel: "a4a3c2142bf41325c3b9dcdfb3d547e186a0f40a54bcfbec06572c8d02e9bb9c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

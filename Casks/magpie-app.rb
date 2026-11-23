cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4689"
  sha256 arm:   "f56740a73724b7a0db0f217ceb83f38ea1a20e04102c9308684b6e6ee3f55b1c",
         intel: "68316da9b6488bad4371c0cd8c7d847f849b57a2b0b5fa8d2c02d1e94fe08fa6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1938"
  sha256 arm:   "9eb292092548680e8149bb4048a1dd3540121eea3c2015a1a1de552d1978268d",
         intel: "17dac9f5bbf2b6122294037f1c5c5fa26e92db2088a4d2c2b9052a0119163841"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

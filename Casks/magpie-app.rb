cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.947"
  sha256 arm:   "c19ecb13747a3477cd63cc2c03d98a1eb2e9d1f6802a0e847f31d343ad13da03",
         intel: "dc38d8ee88361b3639f99c26781886075bf0b72f5494a22db1db7e3442caca76"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

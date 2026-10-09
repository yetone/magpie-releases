cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1131"
  sha256 arm:   "07caba7dedea45af353d9715d9ccdad8180e4a22388f5839e62bb04ad6af8971",
         intel: "7de442cc068b58ab499128428c30f3a1101a437ce906a3a6d29398c9e42608ad"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

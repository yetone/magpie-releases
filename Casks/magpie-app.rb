cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4077"
  sha256 arm:   "f18e24f0d80cf0cddc674592d1d83572c9300e38a507d009fb5eeefd67527671",
         intel: "02daf7fcb0ce30b1a2b197074f5a50210f40bcefba43c2d883844d3f7d9c6562"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2361"
  sha256 arm:   "6ea34ff07e73e5a00bb760f49c01fcb1d30329886d3fa4aa305dc31831258708",
         intel: "d04f24635a8220054639c90f319bcf51b6c2d83a83a72514c29e673f3ede2f04"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

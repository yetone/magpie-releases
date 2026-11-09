cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3377"
  sha256 arm:   "07ff93a19bbbe2b3df17e35eb061912c5b48a62757794f819645f76be29af0a7",
         intel: "d8a3fbb845c39da46bb00626b0eff826a69820a3e4da17d5358b7e5d2a6c1446"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

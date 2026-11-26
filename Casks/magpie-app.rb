cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4840"
  sha256 arm:   "a68d273487f2124906f3e05a51275013a4200678f119051183e926f01ec13ee3",
         intel: "d671b7532a435784e7d3a99869ab03b864ef034b799fb7c96df96333bcad87ef"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

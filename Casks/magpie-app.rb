cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4389"
  sha256 arm:   "66b7e5e5d3a4bbf54cfa245d7b341ace40d1014cda89fb99e3ba0b3af91382aa",
         intel: "c64a6f6d239db3b8d6d26fe6f57ad073a8811dbf1bbaec3a973934c604b3ff9e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

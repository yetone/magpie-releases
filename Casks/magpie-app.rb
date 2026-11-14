cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4135"
  sha256 arm:   "429d01e91f1cae246684acfada33fc33ad9aa2112aa614972f09d9653a261fbd",
         intel: "cc10c553233045bea3ef4b07e45451fb37201ded4f139d264b7aea9fdf15bf64"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

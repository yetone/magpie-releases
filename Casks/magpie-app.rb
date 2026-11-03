cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2779"
  sha256 arm:   "ee98ca9d44bdf6fe387fd868669e999ea4a86ca411efce0c7e0f76722b4fc1bb",
         intel: "afc24323c56ed67247059d0b62b6ca688080771e11c5e79ebc619fdf411756a8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

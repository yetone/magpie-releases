cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4283"
  sha256 arm:   "ee9de6600a8b2d26c8b33d5999454cf1cca0f046f0c2142f33c41ff2056dab2c",
         intel: "3b9d52e1a4bd7c406c135eff03ad9e9b7a95332d569be07c1cae211726c19318"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

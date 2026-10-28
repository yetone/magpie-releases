cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1867"
  sha256 arm:   "0619be360c5ecf7268df1473bcf810a125823953862ca77e48dcc99061c09728",
         intel: "272aa6cf73fd59d6b650cd7ed259d9c2dac13bc202524d49edbd7dda1d3f461c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2743"
  sha256 arm:   "9761308dd851c5648782dac40397c525658d3a11e8610c9d9760e8c27dc20314",
         intel: "2859854b95c54493d60ae0c2b6a09a55423073b37c4b015d9928087b8e669d37"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

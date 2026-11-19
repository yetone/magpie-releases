cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4570"
  sha256 arm:   "206822a6c66c99f5873c2be717f309ae42b9220aba65f84ef734861cefa930f3",
         intel: "a055207639792098d94aecc73181f487d8c0d6a036be2302ca0e47a0cc444911"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

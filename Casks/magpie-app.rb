cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1968"
  sha256 arm:   "6d48c22aa48bd9195a68fa2f711ba50ad1cad627189a996f532fe30803623e88",
         intel: "9ad44f84d4090e93914d806bdf9c42b0ccae71f4fdedfc5d49e483e4120b20f4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

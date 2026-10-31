cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2370"
  sha256 arm:   "d31f3ff1a2f599a346eb00c1c61e5f0d9a7893d2cac9307a36d25484afde8247",
         intel: "66e081fbc28f15d648bf59a318a20f521ce120d1da74ca2f9f5b64500de45421"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

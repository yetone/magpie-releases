cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2201"
  sha256 arm:   "b2c64e376b16e9110b93c4cb18ae1369707912700e530d45c9f40963b8cee5a2",
         intel: "2b2b2287ee7431b010203905c33d83f87f9b905f59a6fcef279a6b3c03dc86a9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

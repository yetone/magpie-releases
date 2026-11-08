cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3314"
  sha256 arm:   "c7ecc401f067006517e5f83ff14f65ae27951b671aa9ad084473291fd931a542",
         intel: "3b10c98ec88cb3a2cec7a17246b300e3e86504aadb9b906e68419b023da193bb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

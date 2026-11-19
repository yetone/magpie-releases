cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4552"
  sha256 arm:   "975da4b1d3ea8a6c7615250e0142ce670d86acf36c22ca0f4ffc1607ceca40cc",
         intel: "b6f83ad35f9d5d6495b5fa609ca2bd48a8fab5b9a7e1b0b00667fe064d15e9bb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

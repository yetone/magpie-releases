cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4134"
  sha256 arm:   "a99de6069e9ee945bad1ccac907e82f8e9d10c1a7336e714b292d595993918f5",
         intel: "7e4184fcc99f2eea47d3a2c52e89c2d50dd5b9e174906747bf6c20d167928d39"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

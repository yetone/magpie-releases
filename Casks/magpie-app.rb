cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3910"
  sha256 arm:   "b715696d37bf43086b9dc190de2c975401f6d62d458fc4884821adc87b5dfe6a",
         intel: "d70b6d89b2951efc0607b192015dd823a52d44692545d4160f2db9df53a158ba"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

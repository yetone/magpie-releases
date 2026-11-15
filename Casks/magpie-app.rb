cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4238"
  sha256 arm:   "1853034f86f030623ef8ed506d21ca49438d98c40596b6f8a17c17f2d86ec28b",
         intel: "149fdebf0eefcd6addb2bfdb12bc1ff64e8558acf72719887ccd78b4e3fb07d3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

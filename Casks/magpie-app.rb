cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3208"
  sha256 arm:   "26a64ab32da932eeadf2720766f272ba3f90cecc2d0fecae17ba406b5a2ec29e",
         intel: "45a78ae127dcb75530d408bd5c7822c60eafd9db22a09066bc018fc2a31b346a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

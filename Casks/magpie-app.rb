cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3726"
  sha256 arm:   "21643067f62dc6b58565aa641b2e3830ce9e19148cdad1027ca9592a97522c75",
         intel: "292487e68bb22c315e51ffa8709900aa2891f33bb4d64b76cb84146f873679a7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

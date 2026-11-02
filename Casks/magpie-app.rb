cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2695"
  sha256 arm:   "4654c71200458300aafbd0f9d02a637caaec76c80bc0c0d66fa462d6969082b9",
         intel: "1c04c5ab0c3b1c0e92ba034bfaebca930252d25588b54a64332a396bec6a7314"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

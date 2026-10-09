cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1142"
  sha256 arm:   "557299448b19eef3e845e933ae046cfc353aa8a5414bf89f0b03ac3c699a70d2",
         intel: "e93026e656529177b9eed30644134f1c9d35a902c81a9d0020ac4b83da48e3ed"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

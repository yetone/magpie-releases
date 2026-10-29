cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2052"
  sha256 arm:   "4e2f8ea8f2e8634931eb766ef67963a04cd9bb59a1387f9dbb71b5b0c45bc1b9",
         intel: "a8db4c6dd1cc3c1b86d191e5681ac6a3878334ce00420539b81d7dc8b4b281f3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3063"
  sha256 arm:   "ca5980478ea7e20deb98d6d75834abda880d73f13593f50052fbef978cb97f9e",
         intel: "bcf3c97c892888016c8e5ab8067512b93c5b9d72f51dbddc260ab4ba29a52a4c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

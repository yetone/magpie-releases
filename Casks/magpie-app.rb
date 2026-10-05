cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.988"
  sha256 arm:   "8670c07643eee13b0dd701a74c207f8c8e9f65dbd13c7de07fc29590b7b50f3b",
         intel: "ee0931352da0392d984ce2a37a376b2b7cb3dad6bdd120443f89dcf878f3ebba"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3185"
  sha256 arm:   "51c2951b5db0848e6bf0fb74f65cbbca3812ada50ee241cc7ac321a77035fb24",
         intel: "4939bd9cdd74f72e25264246b9510d99fb096f39f01e922665183e54a1f66534"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

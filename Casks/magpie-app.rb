cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4869"
  sha256 arm:   "9afb9dfa463c37f9e110d69a2589a29b8771d001e179de6c8bf7a90f5e587b24",
         intel: "a4b60d365d2fec3fbd694c2c0a975a167cf8527044a47d090131c06c91539ec2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

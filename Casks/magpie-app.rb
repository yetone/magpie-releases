cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1017"
  sha256 arm:   "2e43ff8d37b4bb232cb9b06f302b13ea8ecc185714c080ee0c18dc5a3568a11d",
         intel: "5d9a5de3d7dd78d400b8a57a5ca3c140be88e1869edd420978d73954cf0fe247"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

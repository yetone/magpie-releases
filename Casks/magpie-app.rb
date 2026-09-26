cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.136"
  sha256 arm:   "287c28baa5680f326bf8c91a4d3d9b622358349534f88154d5a020a1938720a8",
         intel: "e193f7114f0855292b90fc00900a40812edad1e120f13cf9bf2fb6d518e38bf9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

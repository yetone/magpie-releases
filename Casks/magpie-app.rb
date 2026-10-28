cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1862"
  sha256 arm:   "b02330be74419d6ed651148533bbbea70e7f020102118160428b5f33364ec80f",
         intel: "4119134838b8768000494cb5bd51bc974442730a2027930ffa203d7c1d8706ca"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3970"
  sha256 arm:   "c65923959eca3d78f0a0c6a2057dea130ad5e9030eac701fb2dc77fc2af8e652",
         intel: "4ede3d537dc779377c3079eb2abcaf2b0b4a377bcfb0266c30b2554605bb7f78"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

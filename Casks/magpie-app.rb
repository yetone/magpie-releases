cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.998"
  sha256 arm:   "d5cbd505ec5ee4a8afa6cee094b2766cf572ea6293812f7a9e22c9193621c207",
         intel: "f585abc89e996faa39142e844a9041aa2c8a8e0d8ea70848d16b796bebf0a6c3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

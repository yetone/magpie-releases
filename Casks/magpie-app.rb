cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5037"
  sha256 arm:   "2b015d58fe048403dc93308854bce8ba8faeee7453da2866a2114d65d29682b6",
         intel: "e7a435fedcd916e6a514264a7621af7170cbc794ed9d5540eb8071a59f9c9a77"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

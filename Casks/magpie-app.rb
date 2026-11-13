cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4023"
  sha256 arm:   "3d8368f7faa7be531c2bd7aaeaf6d749ea9fc2a34af1d24bdc05b600c8ff7e31",
         intel: "44150ab3e45ae223df6a8d65f64cafde239b1502f1bf40fe3ab3cf13081b60c7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

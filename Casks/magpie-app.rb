cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3906"
  sha256 arm:   "20d215e220bc2b6b91c6f8853c8b2a90acad59bb2dc275c1c7cf1f0a75cb1ded",
         intel: "250bbff608e52a25b42ba99852e62f9568a1bc13b8b9adf5844a3d1530878a09"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

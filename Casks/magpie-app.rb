cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3926"
  sha256 arm:   "454231b274072dc900e2fd3bcf9b55e61af17804e6ec575ac91c8adaaa5444ee",
         intel: "15cc6e60dca862447f6ac83aba549b0532a187f41f418f49ef214eeb41abc5a5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

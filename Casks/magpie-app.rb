cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3055"
  sha256 arm:   "364ab43f2fe8dc9dfb009431b50cee5a394586de3d75f8f4d63d4be145a355e1",
         intel: "c08017edd368f2aa927760222411c48d07b7fc7344ff47053f25d850c10beaf0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

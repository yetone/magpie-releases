cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3535"
  sha256 arm:   "58ae36e730034397c9f750ec68c8b62d5c64a1a7bb48f1ebdadefeb07f9d0d40",
         intel: "3865b6e29e9a5d27972ff0d9eeab051fb8347efabd9a596c1e2e56ef58e7350c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

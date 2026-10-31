cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2307"
  sha256 arm:   "abd7511fb4f26469a263c90275ab8552377e5314d83403c1be728f9693bd3159",
         intel: "b5f2c43f433305c337e2c13d6487c72509d88a3d24dc6399994965a76e538145"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

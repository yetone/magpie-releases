cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2973"
  sha256 arm:   "61e0b068772593f0745c9320fbc0b02f5bd2b93c4ebc8f65de5b68e88b805b80",
         intel: "0b5b26410b47c31a3975fbcdcae1e563e4de8d6d2eed14e145d5ebca44b76524"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

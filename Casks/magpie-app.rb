cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4340"
  sha256 arm:   "9d0c6bf253a74bfe3ebc5ee27dcbc2890eb3820280ba6fefa685b4d87486f30b",
         intel: "da8526e0cf490c9a6568829dfe7e5bd55af7e5a3c6d99bd594ba803a48e91c73"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

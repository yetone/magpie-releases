cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2701"
  sha256 arm:   "f706a06af40b08e56643f29ebefa495d7a6f91ce9b36a0f495dca128b138bc7b",
         intel: "069b48109ea4ae1077e3ae3eb3931b9f58f5ee1a6321ae9946f69cf5c61ff1bd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

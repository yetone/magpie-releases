cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2392"
  sha256 arm:   "715c8571cfbf9da84b5db5647edcd4fe9b1f2f69a88ea52f7ffa279fc8ecb0fc",
         intel: "fdaa46f1ac81c487e8fbf9710950871d79bd34405d262ded266ae1127aac4c5e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

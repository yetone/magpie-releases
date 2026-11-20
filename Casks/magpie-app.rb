cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4589"
  sha256 arm:   "fd289f0bc3de42b5f727c17d04c5eabcad0919bbcfffab7767023ed59c54e753",
         intel: "a786c6af7f17485fa7efe1abca4082f1a81780474312018a16997ce138f6a2ec"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2817"
  sha256 arm:   "acd7d8e444bd9fef4ac91666cfa3adf4caf2903e65fdcf89065d46f0772c480b",
         intel: "f1ef223cb6c2d113878aee204e0bc15b49050772abbb7e38960acb4da1628ddf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

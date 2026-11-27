cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4953"
  sha256 arm:   "43e6799960861bae4ecec7b7428bc2930ebf7e33c4a73c87bc730221e3d0ee48",
         intel: "01f6bf2607ca2afc591f94c195c7b4658bc3c16ea61ba8535e3a2ae12c5f60f4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

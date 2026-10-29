cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1991"
  sha256 arm:   "d00f353daf8dd9daddf80926f5b49daa4d8d2ea14dec633828a4f98764c07e56",
         intel: "10dd2756f17b9328e5f27ca753fff0f24b08f8c6c7b2e5e15fdb6b524de57952"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

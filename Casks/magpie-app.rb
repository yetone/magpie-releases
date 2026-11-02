cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2746"
  sha256 arm:   "0de5b911652423841ecf4a732911ef60a73ecbafde24f3fcdf20f8aa2f899c03",
         intel: "2974968470f546abde4cf8f4a49d0b5cbaa72bf765c3ea550212992823590ce4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

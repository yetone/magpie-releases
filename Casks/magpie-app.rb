cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5004"
  sha256 arm:   "a536b3b5a77fd6fa38f05f8c1d68689129943649e33940f5a6f5b30ac874260c",
         intel: "2ae26faf55cbbfb0e9fae98cc5d7e30c914c35f8a0c540d53c400e2c6fa6f71f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

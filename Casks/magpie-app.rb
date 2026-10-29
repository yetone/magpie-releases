cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2073"
  sha256 arm:   "e8834e67cbbea855debfcfcb963d17ab6f9842dc61add25f03221038f231df67",
         intel: "e5f3d98efc37b99bfcf037b9dae1a6ad9bea9fab5b7c57ed2eb9f2b11ae28de6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

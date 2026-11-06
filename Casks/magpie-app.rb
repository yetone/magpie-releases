cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3118"
  sha256 arm:   "a4a360901b6e60de6a3394ddda04ec21014f41c10ded7c85049c7867383c4309",
         intel: "40f162ddc9529a5c2f9c47eca01c87d2b28b381bc41aa1b3f8764be9aaf1ef7e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

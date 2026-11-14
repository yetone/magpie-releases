cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4186"
  sha256 arm:   "2b1a1a95b8324c07ef4fd9cdcb0d6a3044da1182cfe6a1aabf5fe13a578c5e76",
         intel: "72a7599486829cd7c97fa00a4463e45d3175e25de2eaa516cb5670d1b27f951e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

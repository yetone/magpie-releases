cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1905"
  sha256 arm:   "006a2333f51d7f8d4730ad50e69567a9d7954c752e17d076061249958522747f",
         intel: "3e0afbcd7cd3ac855c1d2ff2ae952e9555b784a22b0186e0b8a1e70b9560b36c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

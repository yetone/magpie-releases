cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2368"
  sha256 arm:   "c6d3cf00d84129464534512eca592e7793c10d73b0768bb1577406ad4c90beab",
         intel: "c465c60a1e7e0755dc1feaa9f0b8bfc0febab6c9f7870dd0a78bb88ba85289c5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

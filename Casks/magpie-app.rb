cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4974"
  sha256 arm:   "198e5134c67dad8b05f182dbccc1501765b333f8f13c6c7f6f9f20473b0ad808",
         intel: "8dbb57f48dd7430d6f1e0afda4a54be7b230376bab6ee00c944a2257e88cdb28"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

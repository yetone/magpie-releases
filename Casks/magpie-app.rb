cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1978"
  sha256 arm:   "7f8151f1fe9722cf1ed23649edb8b7458d6d7f2c12d9a93df713784a762d3ce0",
         intel: "0cbb90321a9af6e9fbec7b2785b1e87cb4ff80c1efa2f613234432aa37d1e375"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

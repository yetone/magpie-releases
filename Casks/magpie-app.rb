cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.898"
  sha256 arm:   "0f441d20fc16990f967a4283f15faebc29904340ae1842bd58ed7197ffaa1936",
         intel: "4e1ca339bbc6ccc45f5c5be939ae012d1322c76584bbfeb2b87c67f79d51f66d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4196"
  sha256 arm:   "e42226a4bec8c8721edeef5e5bd55b99af837a98b4a564f99c8f7d9eae27c85b",
         intel: "0230e136e8b8192c3b796133ffbead59cf1c2a865481db362191fc1389a640da"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

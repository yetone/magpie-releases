cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4825"
  sha256 arm:   "9087d53fb7da5f42e2bd98cb4d7a75b2b218bad0d1ce9aec1afafade3d7b638c",
         intel: "68f47b5b4bdf7bbbdd29b0e9bf586b6016d894383687b7a1276cf4452766ed1f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

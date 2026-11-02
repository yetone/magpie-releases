cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2673"
  sha256 arm:   "b6c1942b998daddee8b21e84bfde4a4979c2326f5da17943b9e2317e14ec204e",
         intel: "a47f46d24f4248c070b963b2abd0ee0e56a582dac185afbed8f595e7cf4a0871"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

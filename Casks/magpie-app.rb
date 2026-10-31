cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2339"
  sha256 arm:   "23c488ea2fa8b01398a70a6f654b6b1b86ed26d40c8e823d681f55a67d04b8aa",
         intel: "776c627def930698d3ee8816d140555d4502bf7beeea478f455f6b18134db7df"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

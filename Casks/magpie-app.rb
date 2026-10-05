cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.971"
  sha256 arm:   "e191cc825e55925d2dcb166aaf4bb2a29866050623886a1b4ebb98ee74005c82",
         intel: "180f41e8b831a428f56dd6a01ee6e185cd3691f354895c0fe7e8ae1dadbf7eb2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

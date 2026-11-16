cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4335"
  sha256 arm:   "41372d1ed6276e97f3cfd4c661d22b04d0bf6f72f1803f69c36422d4590c23a0",
         intel: "d7324288c9183bda4644203981e49476f8f9e7276116304772a5d5db071d5c45"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

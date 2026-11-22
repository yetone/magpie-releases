cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4677"
  sha256 arm:   "975e53b239fbb08fada38df0f7c3ff4c6aa565b58764ec55bd5bf305a5a5f032",
         intel: "7235491a65336ee3d800bd4ad3d12d2e85e0e89a7ea01f8fd072dc818f73f018"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

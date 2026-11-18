cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4413"
  sha256 arm:   "f80200c667e0cb2652f0176538b9d4122a1aa770bad041f91f8171f4a2739b85",
         intel: "f5e5f7659c76f9c283641722d8ff68fb362396b0c8e333cd6346b5bc962d3533"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

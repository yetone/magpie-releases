cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2550"
  sha256 arm:   "64fc18a0de93e0cf425202318258ccf4a3dda14720846c9581cd11601c7311ee",
         intel: "b108f4ec130c0677c283462988e52833f63a86c2bd88fe470e2784f832e1147b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

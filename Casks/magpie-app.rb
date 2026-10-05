cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.962"
  sha256 arm:   "cabcad11f4fbd0d72de5f4eae01fff53ebb78c3bde43d0bf18c501ea9bfcda4f",
         intel: "4a7806cd57b0fca49e1b9df9f63775ec06fed7a3d92e1aaccbfadef22d401a31"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

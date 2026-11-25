cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4783"
  sha256 arm:   "2875f0084f2d7b44c47e52312f070502846e591907cd5cc6431d4c2a525dd1a8",
         intel: "89df02d5d352408edfaf77bf9d4a447387740ab9fa744ed20cbf945874f2afa5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

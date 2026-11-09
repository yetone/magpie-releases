cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3476"
  sha256 arm:   "e3f57240d484f7b5bbe5849027a7ce992c257285d5a45443bfab63eb9cd7d675",
         intel: "9b2b9a37e5b9dc107463c9288ff6d2e45fea99b0a8be7f0b7b74b44f150e2427"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

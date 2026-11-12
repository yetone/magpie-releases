cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3854"
  sha256 arm:   "35db6c5b6f60ab46592498d6fb97f47c20a06c5cf91a2f5f841675b91b916bd2",
         intel: "4b3bac7b3dee7e273e5de3c8b15c550851d3b0247abe63b5de26f5227866ea3b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

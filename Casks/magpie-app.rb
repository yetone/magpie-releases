cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2739"
  sha256 arm:   "914a5b9427acd10937abcb29a37ee80da5295026f30ceb8ffc0c1b7a0f80ecb1",
         intel: "74f7f4d108877eb5517d831398f404e3e6b019db8802228d17bf013f4aa71864"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4324"
  sha256 arm:   "5b1f4f02708a1fe462892737912291635efe2436141f0c208ac7dd799596c428",
         intel: "8c74d24c77840140b3f6ad377c618e4bcecfde8b1ab95ea4737f9635c5108c59"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

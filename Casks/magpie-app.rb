cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.152"
  sha256 arm:   "99c7a29f459d0a86bee998655d6eaa55d96240e6a88af91ebe24cc20689bb721",
         intel: "8240ed53d42df20203128d59ce0acd6a076f458da0b93a26667b5095d1340b90"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

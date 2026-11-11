cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3697"
  sha256 arm:   "68c36c288f8d2389247f25f138668850906754c23420d486b91f489b840a9b58",
         intel: "6ba370f08dc125717b4866450b6f4c110075db3e026189bf66b93005bdb0898c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

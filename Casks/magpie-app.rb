cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2190"
  sha256 arm:   "93f8e3c338fb1da9a4b0a4114cc14d8ec9d2848456454b36e913633d24ffa23f",
         intel: "3b027c803fa2b05ec515bf54a21a1948f80465002f0e1c0c71b8a02a59cf1566"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

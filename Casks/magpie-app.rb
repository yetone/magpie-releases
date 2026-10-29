cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2113"
  sha256 arm:   "eecfbe683b8ea0e4c6057d98f2d7081c32754830dd2fa13f3c27537dfc17f36c",
         intel: "d78970ea07eaf15b51bba1ede03f30a95be432817b14f2842a9f9bca7e7d99da"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

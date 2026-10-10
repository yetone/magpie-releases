cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1152"
  sha256 arm:   "a59391f86292a1fe387a55131a6dde2f1cce7385dda2ad12d681402181b5e2a7",
         intel: "3ad8e3f5cac6885172554d758c55424515894adfb472b826661cee4f1ffe2432"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

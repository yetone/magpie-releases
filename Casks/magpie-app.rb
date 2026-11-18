cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4461"
  sha256 arm:   "7e93e24affaf4cd1f9e2a9d8a2de91a58cf1e4300e8f399a33a9ade6f41b9389",
         intel: "f7307f7bfef591a55fbfad912f8bc39c1e672efeedc1398e0e55b006a3c1bf80"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

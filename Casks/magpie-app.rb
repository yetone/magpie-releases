cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4462"
  sha256 arm:   "0ead34586d2af4a5a1a49e3b7c9b198c3bd834b9b4454c30744d2ed1feb50367",
         intel: "08e903f5df900f33188ffe589530db6297d22e7eb2b41d70514f2f60b897fc7f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.999"
  sha256 arm:   "48f54bf3709376bdc900eeb8993e9e599fbee902489b3e419d62d59a1e8df91e",
         intel: "ae23d4d0faca1c0e8b6522873f68115aba7326c85fd12e87616fe6a655f465c9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

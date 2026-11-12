cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3939"
  sha256 arm:   "d256663c7aaf2bb5f63d358ca5a434dedffd06aca4ca21b19beaeb20bae3ec1d",
         intel: "61bb1ca3f116e906450e7cb6425b510c1e7f5caa7664006d7ec077642ae29111"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

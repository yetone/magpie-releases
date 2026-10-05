cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1025"
  sha256 arm:   "e7c6edd7cb90ce337a868df0dbda31a07c8b392196144cc1c13c8b1a34a9617d",
         intel: "772be10942d69add3a727328ade3cd22f8a45c28ea146014c7087f1cdb38eab5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

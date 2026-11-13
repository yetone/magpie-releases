cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4080"
  sha256 arm:   "6436f8fe2871ca53bd071c6f95b500b38e4619a9c6fc22d2d595ccdfc4e91e85",
         intel: "326c0d7cae8dda94fac5d7cd2e639a3f08d45bd967724212b52feedcb6307221"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

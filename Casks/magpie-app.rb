cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4753"
  sha256 arm:   "f69310ccd79ef33925c47ef37abe6c6f2b0d2bca4a52516c3e332d1968edf743",
         intel: "1cf913e3ffccfa450e74c153144f212164330ad6ef52a894343ae76ae02d2cfb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3272"
  sha256 arm:   "c23194359c65f34e5b1d2c614f5ec8d1c401e32f46556c6fc73c055158438ff9",
         intel: "89dfdc5a577056fe4ff4a47a1d8795f1ad2974d6d45360220c4deb4d778d7e62"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

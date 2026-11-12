cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3838"
  sha256 arm:   "e5c70cbbf1d1c9ce8a26e95fb02475a90bb008cf5c1f18c3af33d0f32e66f126",
         intel: "1cbf96f2edb73bcca7eb73668e4fb31e3e4bb37bdefb15fbe3ff44afedd02d84"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

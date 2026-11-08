cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3301"
  sha256 arm:   "2c2a22d994ca24a5b5303c953ff6e0c0ee56252000b9adf460cc9fc2993d24f8",
         intel: "0136132a7cae8d95fe216aa40e12e84010456719e37e40f39207efbb91193f5c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

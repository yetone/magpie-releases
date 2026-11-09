cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3463"
  sha256 arm:   "6806eb2a79cec15a993b20576b38564685afc5b102b0bd2f8d89839c3fe71998",
         intel: "6e37a73e963dfb8324a0c0b08275f67d1af00576e2d0bba6da5b313911b9199b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

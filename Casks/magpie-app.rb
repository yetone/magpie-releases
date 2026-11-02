cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2676"
  sha256 arm:   "4f1a853f849e8833691c1ff0c1fe0c2c1039010537f4cd751da8fe61b96b0a85",
         intel: "e66024a2fdf203aa9cf866c0466ec7241aa23998af6d4853d616899a49122ecb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

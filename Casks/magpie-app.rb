cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2619"
  sha256 arm:   "a74cd4f891e3149d71fbba58b3dfd50c7ecfb4deda8e31a4f6ca62c50cda31c5",
         intel: "684c96d2b226db0256699b6cd72c44ae60119d855f233d02ef155414d7f1ae70"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

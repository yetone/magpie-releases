cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2448"
  sha256 arm:   "697169dd44c11d5de06765d2cdb04a232f0dc8ee3b353ad0847d09b4f9dbdd19",
         intel: "4601ce60217b11ef7a3c2866609a4b38a9491173c78ae9ea165abb4f85960f29"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

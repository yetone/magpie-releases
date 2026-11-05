cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3045"
  sha256 arm:   "88150a066aa66eba1bccc60f9172fdefd1e181f51cb867bb40ffefa8d1014a5a",
         intel: "6d8f8d1c10ce1c71a27c981f79fe605c03a308ad7e94790af59ae3aa31b38364"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

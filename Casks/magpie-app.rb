cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2462"
  sha256 arm:   "255053700fa3a2d736c2e5405e151ea90e11e1ba79a66a8cd6abc084ca41bd01",
         intel: "46ea45d699d5c2aafe1d0cc14d25a9a0140ea62b5f7294d48e00594d28eda808"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

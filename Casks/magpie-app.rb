cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2431"
  sha256 arm:   "681e9d3762c255f1734f64a42b58606c847fdfeed4f92c0f9a1bfb03f6d92b75",
         intel: "da1ef05214cc561da889a06946b430c6fe92c2e6774fe994b38c75682e7ffecc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

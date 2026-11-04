cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2886"
  sha256 arm:   "1de94197b7c556ecff011f5eac82d1cba68160a69c7d4e92ba877d78d0aba36a",
         intel: "db90d85efa786b8e87b03f5cffc79b4d685ee331abd63148249a5e8be34df2c1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

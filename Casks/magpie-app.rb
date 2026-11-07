cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3285"
  sha256 arm:   "1dfe166fdeee669dc2fc112b921352f07428b56390b706432afe103613082c90",
         intel: "b2f93aa85dc6715efd9ff927b8df071a63972f80ab144ff93318f4c68f44f5be"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

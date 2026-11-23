cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4703"
  sha256 arm:   "1a13478eeb7d13ea1de986b6d65493bb9f79ec6ed785a018675bec4f2fd01da9",
         intel: "c456c34f1e905ef48b0918551de098a6c8bb466a70ff59ce1288b9e11a63cf98"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

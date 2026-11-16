cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4315"
  sha256 arm:   "9a78b455c5a485fa86ccec05a4f487767294ce09e68308349cbc873e131c5802",
         intel: "a8aae2ea0c768f4c4baa2a46d3a9c11ca7daadd78c23333fa2b21dc58944310f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

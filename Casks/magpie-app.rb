cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2797"
  sha256 arm:   "1c34afd42670132fa0ccc40d6bbfc270cd124b4e962d86fba3c7e500cbe6d4a3",
         intel: "b8400ab9cbb80dc6aef69263872b0c972642cc2c4b4633ce5bc30b30b4d3ca17"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
